import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/entities/purchase_recipt.dart';
import '../../../domain/entities/user.dart';
import '../../../infrastructure/purchase/purchase_data_source.dart';
import '../current_user/current_user.dart';
import 'in_app_purchase_service_state.dart';

part 'in_app_purchase_service.g.dart';

@Riverpod(keepAlive: true)
class InAppPurchaseService extends _$InAppPurchaseService {
  PurchaseDataSource get purchaseDataSource =>
      ref.read(purchaseDataSourceProvider.notifier);
  User get currentUser => ref.watch(currentUserProvider);

  @override
  Future<InAppPurchaseServiceState> build() async {
    await Purchases.setLogLevel(LogLevel.verbose);
    const googleAPIKey = String.fromEnvironment('revenueCatGoogleAPIKey');
    const appleAPIKey = String.fromEnvironment('revenueCatAppleAPIKey');

    PurchasesConfiguration configuration;
    if (Platform.isAndroid) {
      configuration = PurchasesConfiguration(googleAPIKey);
    } else {
      configuration = PurchasesConfiguration(appleAPIKey);
    }
    await Purchases.configure(configuration);
    final result = await Purchases.logIn(currentUser.uid);

    final offerings = await getOfferingItems();
    final isPremium = _isPremiumUser(result.customerInfo);
    return InAppPurchaseServiceState(
      offerings: offerings!,
      isPremiumUser: isPremium,
    );
  }

  Future<Offerings?> getOfferingItems() async {
    try {
      final offerings = await Purchases.getOfferings();

      if (offerings.current != null &&
          offerings.current!.availablePackages.isNotEmpty) {
        final offering = offerings.current!;
        final packages = offering.availablePackages;

        for (final package in packages) {
          debugPrint('package: ${package.identifier}');
        }
        return offerings;
      }
    } on PlatformException catch (e) {
      debugPrint('getOfferingItems error: $e');
    }
    return null;
  }

  bool _isPremiumUser(CustomerInfo customerInfo) {
    final memberState = _getMemberState(customerInfo);
    if (memberState.resultRemainingTime != null ||
        memberState.isUnlimitedPremium) {
      return true;
    } else {
      return false;
    }
  }

  Future<void> makePurchase(String packageId) async {
    try {
      final isPremiumUser = state.requireValue.isPremiumUser;

      Package package;
      // 購入するパッケージを取得
      package = state
          .requireValue.offerings.all['premium-plan']!.availablePackages
          .firstWhere((element) => element.identifier == packageId);
      final customerInfo = await Purchases.purchasePackage(package);
      final productId = _getProductIdFromPackageId(packageId);

      if (customerInfo.allPurchasedProductIdentifiers.contains(productId)) {
        // プレミアムプランの有効期限をDateTime型で取得
        final premiumPlanExpirationDate =
            (currentUser.premiumPlanExpirationDate ?? DateTime.now()).add(
          Duration(days: _getEffectivePeriodFromPackageId(packageId)!),
        );
        final isPremiumWithUnlimited =
            package.identifier == 'unlimited-premium';

        final purchaseRecipt = PurchaseRecipt(
          id: currentUser.uid,
          premiumPlanExpirationDate:
              isPremiumWithUnlimited ? null : premiumPlanExpirationDate,
          createdAt: DateTime.now(),
        );

        if (isPremiumUser) {
          await purchaseDataSource.updatePurchaseInformation(
            purchaseRecipt: purchaseRecipt,
          );
        } else {
          await purchaseDataSource.createPurchaseRecipt(
            purchaseRecipt: purchaseRecipt,
          );
        }
      } else {
        return;
      }
      final isPremium = _isPremiumUser(customerInfo);
      state = AsyncValue.data(
        state.requireValue.copyWith(isPremiumUser: isPremium),
      );
      ref.invalidate(currentUserProvider);
    } on PlatformException catch (e) {
      debugPrint('makePurchase error $e');
    }
  }

  Future<bool> canRestorePurchase() async {
    try {
      final customerInfo = await Purchases.restorePurchases();
      final memberState = _getMemberState(customerInfo);
      if (memberState.resultRemainingTime != null ||
          memberState.isUnlimitedPremium) {
        await purchaseDataSource.createPurchaseRecipt(
          purchaseRecipt: PurchaseRecipt(
            id: currentUser.uid,
            premiumPlanExpirationDate: memberState.resultRemainingTime,
            createdAt: DateTime.now(),
          ),
        );
        state = AsyncValue.data(
          state.requireValue.copyWith(isPremiumUser: true),
        );
        ref.invalidate(currentUserProvider);
        return true;
      } else {
        return false;
      }
    } on PlatformException catch (e) {
      debugPrint('purchase repo  restorePurchase error $e');
      return false;
    }
  }

  MemberState _getMemberState(CustomerInfo customerInfo) {
    final pastPurchases = customerInfo.nonSubscriptionTransactions;
    DateTime? resultDate;
    for (final pastPurchase in pastPurchases) {
      final pastPurchasedProductId = pastPurchase.productIdentifier;

      if (pastPurchasedProductId == 'unlimited_premium' ||
          pastPurchasedProductId == 'unlimited_premium_v1') {
        return (
          resultRemainingTime: null,
          isUnlimitedPremium: true,
        );
      }

      final pastPurchasedDate = DateTime.parse(pastPurchase.purchaseDate);
      final expirationDate = pastPurchasedDate.add(
        Duration(
          days: _getEffectivePeriodFromProductId(pastPurchasedProductId)!,
        ),
      );
      // 余っている分の時間　＝　有効期限　ー　現在時刻
      final now = DateTime.now().toUtc();
      final remainingTime = expirationDate.difference(now);

      if (!remainingTime.isNegative) {
        resultDate = (resultDate ?? now).add(remainingTime);
      }
    }
    return (
      resultRemainingTime: resultDate,
      isUnlimitedPremium: false,
    );
  }

  int? _getEffectivePeriodFromProductId(String productId) {
    return switch (productId) {
      'unlimited_premium' || 'unlimited_premium_v1' => null,
      '7day_premium' || '7day_premium_v1' => 7,
      '5day_premium' || '5day_premium_v1' => 5,
      '3day_premium' || '3day_premium_v1' => 3,
      '1day_premium' || '1day_premium_v1' => 1,
      _ => null,
    };
  }

  int? _getEffectivePeriodFromPackageId(String packageId) {
    return switch (packageId) {
      'unlimited-premium' => null,
      '7day-premium' => 7,
      '5day-premium' => 5,
      '3day-premium' => 3,
      r'$rc_lifetime' => 1,
      _ => null,
    };
  }

  String? _getProductIdFromPackageId(String packageId) {
    if (Platform.isIOS) {
      return switch (packageId) {
        'unlimited-premium' => 'unlimited_premium',
        '7day-premium' => '7day_premium',
        '5day-premium' => '5day_premium',
        '3day-premium' => '3day_premium',
        r'$rc_lifetime' => '1day_premium',
        _ => null,
      };
    } else if (Platform.isAndroid) {
      return switch (packageId) {
        'unlimited-premium' => 'unlimited_premium_v1',
        '7day-premium' => '7day_premium_v1',
        '5day-premium' => '5day_premium_v1',
        '3day-premium' => '3day_premium_v1',
        r'$rc_lifetime' => '1day_premium_v1',
        _ => null,
      };
    }

    return null;
  }
}

typedef MemberState = ({
  DateTime? resultRemainingTime,
  bool isUnlimitedPremium
});
