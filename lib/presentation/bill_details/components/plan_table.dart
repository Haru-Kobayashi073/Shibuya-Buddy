import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../i18n/strings.g.dart';
import '../../../utils/styles/app_color.dart';
import '../../../utils/styles/app_text_style.dart';

class PlanTable extends StatelessWidget {
  const PlanTable({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
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
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(
                        width: deviceWidth * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                t.billDetailsPage.pricingPlan.details
                                    .premiumPrice.days,
                                style: planTextStyle,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Gap(8),
                                  Text(
                                    t.billDetailsPage.pricingPlan.details
                                        .premiumPrice.daily,
                                    style: planTextStyle,
                                  ),
                                  Text(
                                    t.billDetailsPage.pricingPlan.details
                                        .premiumPrice.threeDays,
                                    style: planTextStyle,
                                  ),
                                  Text(
                                    t.billDetailsPage.pricingPlan.details
                                        .premiumPrice.fiveDays,
                                    style: planTextStyle,
                                  ),
                                  Text(
                                    t.billDetailsPage.pricingPlan.details
                                        .premiumPrice.sevenDays,
                                    style: planTextStyle,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Gap(12),
                          Text(
                            t.billDetailsPage.pricingPlan.details.premiumPrice
                                .or,
                            style: AppTextStyle.textStyle.copyWith(
                              fontSize: 12,
                            ),
                          ),
                          const Gap(12),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                t.billDetailsPage.pricingPlan.details
                                    .premiumPrice.lifetime,
                                style: planTextStyle,
                              ),
                              const Gap(12),
                              Text(
                                t.billDetailsPage.pricingPlan.details
                                    .premiumPrice.lifetimePrice,
                                style: planTextStyle,
                              ),
                            ],
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
}
