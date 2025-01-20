import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../i18n/strings.g.dart';
import '../../utils/providers/in_app_purchase/in_app_purchase_service.dart';
import '../../utils/providers/scaffold_messenger/scaffold_messenger.dart';
import '../components/loading_overlay.dart';

part 'bill_detail_page_notifier.g.dart';

@riverpod
class BillDetailPageNotifier extends _$BillDetailPageNotifier {
  InAppPurchaseService get inAppPurchaseService =>
      ref.read(inAppPurchaseServiceProvider.notifier);
  ScaffoldMessenger get scaffoldMessenger =>
      ref.read(scaffoldMessengerProvider.notifier);
  TranslationsBillDetailsPageSnackBarErrorEn get i18nSnackBarError =>
      t.billDetailsPage.snackBar.error;

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
      ref.read(isShowLoadingOverlayProvider.notifier).state = true;
      final packageId = _getPackageId();
      await inAppPurchaseService.makePurchase(packageId);
    } on Exception catch (e) {
      debugPrint('purchaseItem error: $e');
      scaffoldMessenger
          .showExceptionSnackBar(i18nSnackBarError.failedToPurchase);
    } finally {
      ref.read(isShowLoadingOverlayProvider.notifier).state = false;
    }
  }

  Future<void> restorePurhcaseItem() async {
    try {
      ref.read(isShowLoadingOverlayProvider.notifier).state = true;
      final canRestorePurchase =
          await inAppPurchaseService.canRestorePurchase();
      if (!canRestorePurchase) {
        scaffoldMessenger
            .showExceptionSnackBar(i18nSnackBarError.PurchaseHistoryNotFound);
        return;
      }
    } on Exception catch (e) {
      debugPrint('restorePurhcaseItem error: $e');
      scaffoldMessenger
          .showExceptionSnackBar(i18nSnackBarError.failedToRestorePurchase);
    } finally {
      ref.read(isShowLoadingOverlayProvider.notifier).state = false;
    }
  }

  String _getPackageId() {
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
