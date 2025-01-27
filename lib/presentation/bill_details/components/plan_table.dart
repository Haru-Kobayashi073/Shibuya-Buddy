import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../utils/providers/in_app_purchase/purchase_item_config.dart';
import '../../../utils/styles/app_color.dart';
import '../../../utils/styles/app_text_style.dart';
import '../bill_detail_page_notifier.dart';

class PlanTable extends ConsumerWidget {
  const PlanTable({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final purchaseItemPrices =
        ref.watch(billDetailPageNotifierProvider).purchaseItemPrices;
    final headerStyle = AppTextStyle.textStyle.copyWith(
      fontSize: 16,
      fontWeight: FontWeight.bold,
    );
    final planTextStyle = AppTextStyle.textStyle.copyWith(
      fontSize: 12,
      fontWeight: FontWeight.bold,
    );

    return Column(
      children: [
        Text(
          t.billDetailsPage.pricingPlan.title,
          style: AppTextStyle.textStyle.copyWith(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Gap(16),
        Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
          columnWidths: const {
            0: FlexColumnWidth(),
            1: FlexColumnWidth(2),
          },
          children: [
            TableRow(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(8),
                    ),
                    color: AppColor.blue50Background,
                  ),
                  height: 50,
                  margin: const EdgeInsets.only(right: 1, bottom: 1),
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                  child: Center(
                    child: Text(
                      t.billDetailsPage.pricingPlan.columns.standard,
                      style: headerStyle,
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(8),
                    ),
                    color: AppColor.yellow200,
                  ),
                  height: 50,
                  margin: const EdgeInsets.only(left: 1, bottom: 1),
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                  child: Center(
                    child: Text(
                      t.billDetailsPage.pricingPlan.columns.premium,
                      style: headerStyle,
                    ),
                  ),
                ),
              ],
            ),
            TableRow(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(8),
                    ),
                    color: AppColor.blue50Background,
                  ),
                  height: 200,
                  margin: const EdgeInsets.only(right: 1),
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    t.billDetailsPage.pricingPlan.details.free,
                    style: headerStyle,
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(8),
                    ),
                    color: AppColor.yellow200,
                  ),
                  height: 200,
                  margin: const EdgeInsets.only(left: 1, bottom: 1),
                  child: tableBuilder(
                    [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            t.billDetailsPage.pricingPlan.details.premiumPrice
                                .days,
                            style: planTextStyle,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Gap(8),
                              Text(
                                t.billDetailsPage.pricingPlan.details
                                    .premiumPrice
                                    .daily(
                                  price: purchaseItemPrices[
                                      PurchaseItemConfig.oneDay.packageId]!,
                                ),
                                style: planTextStyle,
                              ),
                              Text(
                                t.billDetailsPage.pricingPlan.details
                                    .premiumPrice
                                    .threeDays(
                                  price: purchaseItemPrices[
                                      PurchaseItemConfig.threeDays.packageId]!,
                                ),
                                style: planTextStyle,
                              ),
                              Text(
                                t.billDetailsPage.pricingPlan.details
                                    .premiumPrice
                                    .fiveDays(
                                  price: purchaseItemPrices[
                                      PurchaseItemConfig.fiveDays.packageId]!,
                                ),
                                style: planTextStyle,
                              ),
                              Text(
                                t.billDetailsPage.pricingPlan.details
                                    .premiumPrice
                                    .sevenDays(
                                  price: purchaseItemPrices[
                                      PurchaseItemConfig.sevenDays.packageId]!,
                                ),
                                style: planTextStyle,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Gap(12),
                      Text(
                        t.billDetailsPage.pricingPlan.details.premiumPrice.or,
                        style: AppTextStyle.textStyle.copyWith(
                          fontSize: 12,
                        ),
                      ),
                      const Gap(12),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            t.billDetailsPage.pricingPlan.details.premiumPrice
                                .lifetime,
                            style: planTextStyle,
                          ),
                          const Gap(12),
                          Text(
                            t.billDetailsPage.pricingPlan.details.premiumPrice
                                .lifetimePrice(
                              price: purchaseItemPrices[PurchaseItemConfig
                                  .unlimitedPremium.packageId]!,
                            ),
                            style: planTextStyle,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  LayoutBuilder tableBuilder(List<Widget> children) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return (constraints.maxWidth < 220)
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: children,
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: children,
              );
      },
    );
  }

  double getWidgetWidth(List<Widget> children, BuildContext context) {
    final box = context.findRenderObject()! as RenderBox;
    return box.size.width;
  }
}
