import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../i18n/strings.g.dart';
import '../../utils/providers/in_app_purchase/in_app_purchase_service.dart';

part 'bill_detail_page_notifier.g.dart';

@riverpod
class BillDetailPageNotifier extends _$BillDetailPageNotifier {
  InAppPurchaseService get inAppPurchaseService =>
      ref.read(inAppPurchaseServiceProvider.notifier);

  @override
  String build() {
    return t.billDetailsPage.pricingOptions.oneDay.duration;
  }

  void selectPlan(String duration) {
    state = duration;
    return;
  }

  Future<void> purchaseItem() async {
    try {
      final packageId = getPackageId();
      await inAppPurchaseService.makePurchase(packageId);
    } on Exception catch (e) {
      debugPrint('purchaseItem error: $e');
    }
  }

  String getPackageId() {
    if (state == t.billDetailsPage.pricingOptions.oneDay.duration) {
      return r'$rc_lifetime';
    } else if (state == t.billDetailsPage.pricingOptions.threeDays.duration) {
      return '3day-premium';
    } else if (state == t.billDetailsPage.pricingOptions.fiveDays.duration) {
      return '5day-premium';
    } else if (state == t.billDetailsPage.pricingOptions.sevenDays.duration) {
      return '7day-premium';
    } else if (state == t.billDetailsPage.pricingOptions.lifetime.duration) {
      return 'unlimited-premium';
    } else {
      return '';
    }
  }
}
