import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../i18n/strings.g.dart';
import '../../utils/custom_logger.dart';
import '../../utils/providers/in_app_purchase/in_app_purchase_service.dart';
import '../../utils/providers/in_app_purchase/purchase_item_config.dart';
import '../../utils/providers/scaffold_messenger/scaffold_messenger.dart';
import '../components/loading_overlay.dart';
import 'bill_detail_page_state.dart';

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
  BillDetailPageState build() {
    final purchaseItemPrices = getPurchaseItemPrice();

    return BillDetailPageState(
      selectedItemString: t.billDetailsPage.pricingOptions.oneDay.duration,
      purchaseItemPrices: purchaseItemPrices,
    );
  }

  void selectPlan(String duration) {
    state = state.copyWith(selectedItemString: duration);
    return;
  }

  Map<String, String> getPurchaseItemPrice() {
    try {
      final price = inAppPurchaseService.getPurchaseItemPrice();
      return price;
    } on Exception catch (e) {
      logger.e('getPurchaseItemPrice: $e');
      return {};
    }
  }

  Future<void> purchaseItem({required void Function() onSuccess}) async {
    try {
      ref.read(isShowLoadingOverlayProvider.notifier).state = true;
      final packageId = _getPackageId();
      await inAppPurchaseService.makePurchase(packageId);
      onSuccess();
    } on Exception catch (e) {
      logger.e('purchaseItem: $e');
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
      logger.e('restorePurhcaseItem: $e');
      scaffoldMessenger
          .showExceptionSnackBar(i18nSnackBarError.failedToRestorePurchase);
    } finally {
      ref.read(isShowLoadingOverlayProvider.notifier).state = false;
    }
  }

  String _getPackageId() {
    final selectedItemString = state.selectedItemString;
    if (selectedItemString ==
        t.billDetailsPage.pricingOptions.oneDay.duration) {
      return PurchaseItemConfig.oneDay.packageId;
    } else if (selectedItemString ==
        t.billDetailsPage.pricingOptions.threeDays.duration) {
      return PurchaseItemConfig.threeDays.packageId;
    } else if (selectedItemString ==
        t.billDetailsPage.pricingOptions.fiveDays.duration) {
      return PurchaseItemConfig.fiveDays.packageId;
    } else if (selectedItemString ==
        t.billDetailsPage.pricingOptions.sevenDays.duration) {
      return PurchaseItemConfig.sevenDays.packageId;
    } else if (selectedItemString ==
        t.billDetailsPage.pricingOptions.unlimited.duration) {
      return PurchaseItemConfig.unlimitedPremium.packageId;
    } else {
      return '';
    }
  }

  Future<void> launchNotion() async {
    final url = Uri.parse(
      'https://general-epoxy-a08.notion.site/1982e4c8d4408076a55dd8a1e2037c17?pvs=4',
    );
    await launchUrl(url, mode: LaunchMode.externalApplication);
  }
}
