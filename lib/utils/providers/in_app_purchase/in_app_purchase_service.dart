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
import 'purchase_item_config.dart';

part 'in_app_purchase_service.g.dart';

@Riverpod(keepAlive: true)
class InAppPurchaseService extends _$InAppPurchaseService {
  PurchaseDataSource get purchaseDataSource =>
      ref.read(purchaseDataSourceProvider.notifier);
  User get currentUser => ref.watch(currentUserProvider);
  String get offeringId => 'premium-plan';

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

  Map<String, String> getPurchaseItemPrice() {
    final offerings = state.requireValue.offerings;
    final packages = offerings.all[offeringId]!.availablePackages;
    final purchaseItemPrices = <String, String>{};
    for (final package in packages) {
      final purchaseItemConfig =
          PurchaseItemConfigX.fromPackageId(package.identifier);
      purchaseItemPrices[purchaseItemConfig.packageId] =
          package.storeProduct.priceString + package.storeProduct.currencyCode;
    }
    return purchaseItemPrices;
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
      package = state.requireValue.offerings.all[offeringId]!.availablePackages
          .firstWhere((element) => element.identifier == packageId);
      final customerInfo = await Purchases.purchasePackage(package);

      // 購入したパッケージの情報を取得
      final purchaseItemConfig = PurchaseItemConfigX.fromPackageId(packageId);

      if (customerInfo.allPurchasedProductIdentifiers
          .contains(purchaseItemConfig.productId)) {
        // プレミアムプランの有効期限をDateTime型で取得
        final premiumPlanExpirationDate =
            (currentUser.premiumPlanExpirationDate ?? DateTime.now()).add(
          Duration(days: purchaseItemConfig.effectiveDays!),
        );
        final isPremiumWithUnlimited =
            package.identifier == PurchaseItemConfig.unlimitedPremium.packageId;

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

      // 購入した商品の情報を取得
      final purchaseItemConfig =
          PurchaseItemConfigX.fromProductId(pastPurchasedProductId);

      if (purchaseItemConfig == PurchaseItemConfig.unlimitedPremium) {
        return (
          resultRemainingTime: null,
          isUnlimitedPremium: true,
        );
      }

      final pastPurchasedDate = DateTime.parse(pastPurchase.purchaseDate);
      final expirationDate = pastPurchasedDate.add(
        Duration(days: purchaseItemConfig.effectiveDays!),
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
}

typedef MemberState = ({
  DateTime? resultRemainingTime,
  bool isUnlimitedPremium
});
