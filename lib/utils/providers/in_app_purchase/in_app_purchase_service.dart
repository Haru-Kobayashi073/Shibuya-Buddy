import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/entities/user.dart';
import '../../../infrastructure/user/user_data_source.dart';
import '../current_user/current_user.dart';
import 'in_app_purchase_service_state.dart';

part 'in_app_purchase_service.g.dart';

@Riverpod(keepAlive: true)
class InAppPurchaseService extends _$InAppPurchaseService {
  UserDataSource get userDataSource =>
      ref.read(userDataSourceProvider.notifier);
  User get currentUser => ref.read(currentUserProvider);

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
    final isPremiumUser = await checkIsPremiumUser(
      result.customerInfo,
      'premium',
    );
    return InAppPurchaseServiceState(
      offerings: offerings!,
      isPremiumUser: isPremiumUser,
    );
  }

  Future<Offerings?> getOfferingItems() async {
    await Purchases.logIn(currentUser.uid);
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

  Future<bool> checkIsPremiumUser(
    CustomerInfo customerInfo,
    String entitlement,
  ) async {
    final entitlements = customerInfo.entitlements.all;
    if (entitlements.isEmpty) {
      return false;
    }
    if (!entitlements.containsKey(entitlement)) {
      ///そもそもentitlementが設定されて無い場合
      return false;
    } else if (entitlements[entitlement]!.isActive) {
      ///設定されていて、activeになっている場合
      return true;
    } else {
      return false;
    }
  }

  Future<void> makePurchase(String packageId) async {
    try {
      Package package;
      package = state
          .requireValue.offerings.all['premium-plan']!.availablePackages
          .firstWhere((element) => element.identifier == packageId);
      await Purchases.logIn(currentUser.uid);
      final customerInfo = await Purchases.purchasePackage(package);
      final isPremiumUser = await checkIsPremiumUser(customerInfo, 'premium');
      state = AsyncValue.data(
        state.requireValue.copyWith(isPremiumUser: isPremiumUser),
      );
    } on PlatformException catch (e) {
      debugPrint('makePurchase error $e');
    }
  }

  Future<void> restorePurchase(String entitlement) async {
    try {
      final customerInfo = await Purchases.restorePurchases();
      final isPremiumUser = await checkIsPremiumUser(customerInfo, entitlement);
      if (!isPremiumUser) {
        debugPrint('購入情報なし');
      } else {
        debugPrint('$entitlement 購入情報あり 復元する');
      }
      state = AsyncValue.data(
        state.requireValue.copyWith(isPremiumUser: isPremiumUser),
      );
    } on PlatformException catch (e) {
      debugPrint('purchase repo  restorePurchase error $e');
    }
  }

  List<String> getValidActiveItems(CustomerInfo customerInfo) {
    final allPurchasedProductIdentifiers =
        customerInfo.allPurchasedProductIdentifiers;
    final allPurchaseDates = customerInfo.allPurchaseDates;
    final activeProductIds = allPurchasedProductIdentifiers.map(
      (id) {
        final purchaseDate = allPurchaseDates[id]!;
        final now = DateTime.now();
        final purchaseDateTime = DateTime.parse(purchaseDate);
        final diff = now.difference(purchaseDateTime);

        final isActive = switch (id) {
          'unlimited-premium' => true,
          '7day-premium' => diff.inDays < 7,
          '5day-premium' => diff.inDays < 5,
          '3day-premium' => diff.inDays < 3,
          '1day-premium' => diff.inDays < 1,
          _ => false,
        };
        if (isActive) {
          return id;
        }
        return null;
      },
    ).toList();

    return activeProductIds.whereType<String>().toList();
  }
}
