import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../infrastructure/firebase/firebase_auth_provider.dart';

part 'in_app_purchase_service.g.dart';

@Riverpod(keepAlive: true)
class InAppPurchaseService extends _$InAppPurchaseService {
  User get currentUser => ref.read(firebaseAuthProvider).currentUser!;

  @override
  Future<void> build() async {
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

    await getOfferingItems();
    return;
  }

  Future<void> getOfferingItems() async {
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
      }
    } on PlatformException catch (e) {
      // optional error handling
      debugPrint('getOfferingItems error: $e');
    }
  }
}
