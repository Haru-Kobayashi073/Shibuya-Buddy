import 'dart:io';

enum PurchaseItemConfig {
  oneDay(
    packageId: r'$rc_lifetime',
    iosProductId: '1day_premium',
    androidProductId: '1day_premium_v1',
    effectiveDays: 1,
  ),
  threeDays(
    packageId: '3day-premium',
    iosProductId: '3day_premium',
    androidProductId: '3day_premium_v1',
    effectiveDays: 3,
  ),
  fiveDays(
    packageId: '5day-premium',
    iosProductId: '5day_premium',
    androidProductId: '5day_premium_v1',
    effectiveDays: 5,
  ),
  sevenDays(
    packageId: '7day-premium',
    iosProductId: '7day_premium',
    androidProductId: '7day_premium_v1',
    effectiveDays: 7,
  ),
  unlimitedPremium(
    packageId: 'unlimited-premium',
    iosProductId: 'unlimited_premium',
    androidProductId: 'unlimited_premium_v1',
    effectiveDays: null,
  );

  const PurchaseItemConfig({
    required this.packageId,
    required this.iosProductId,
    required this.androidProductId,
    required this.effectiveDays,
  });
  final String packageId;
  final String iosProductId;
  final String androidProductId;
  final int? effectiveDays;
}

extension PurchaseItemConfigX on PurchaseItemConfig {
  String get productId {
    if (Platform.isIOS) {
      return iosProductId;
    } else if (Platform.isAndroid) {
      return androidProductId;
    }
    return '';
  }

  static PurchaseItemConfig fromPackageId(String packageId) {
    return PurchaseItemConfig.values.firstWhere(
      (element) => element.packageId == packageId,
    );
  }

  static PurchaseItemConfig fromProductId(String productId) {
    return PurchaseItemConfig.values.firstWhere(
      (element) => element.productId == productId,
    );
  }
}
