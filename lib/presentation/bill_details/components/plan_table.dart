import 'package:flutter/material.dart';

import '../../../utils/styles/app_color.dart';
import '../../../utils/styles/app_text_style.dart';

class PlanTable extends StatelessWidget {
  const PlanTable({super.key});

  @override
  Widget build(BuildContext context) {
    final headerStyle = AppTextStyle.textStyle.copyWith(
      fontSize: 16,
      fontWeight: FontWeight.bold,
    );
    final planTextStyle = AppTextStyle.textStyle.copyWith(
      fontSize: 12,
      fontWeight: FontWeight.bold,
    );

    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
      columnWidths: const {
        0: FlexColumnWidth(),
        1: FlexColumnWidth(2),
      },
      children: [
        TableRow(
          children: [
            ClipRRect(
              borderRadius:
                  const BorderRadius.only(topLeft: Radius.circular(8)),
              child: Container(
                height: 50,
                margin: const EdgeInsets.only(right: 1, bottom: 1),
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                color: AppColor.blue50Background,
                child: Center(
                  child: Text('スタンダード', style: headerStyle),
                ),
              ),
            ),
            ClipRRect(
              borderRadius:
                  const BorderRadius.only(topRight: Radius.circular(8)),
              child: Container(
                height: 50,
                margin: const EdgeInsets.only(left: 1, bottom: 1),
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                color: AppColor.yellow200,
                child: Center(
                  child: Text('プレミアム', style: headerStyle),
                ),
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            ClipRRect(
              borderRadius:
                  const BorderRadius.only(bottomLeft: Radius.circular(8)),
              child: Container(
                height: 200,
                margin: const EdgeInsets.only(right: 1),
                alignment: Alignment.center,
                padding: const EdgeInsets.all(16),
                color: AppColor.blue50Background,
                child: Text('無料 🎉', style: headerStyle),
              ),
            ),
            ClipRRect(
              borderRadius:
                  const BorderRadius.only(bottomRight: Radius.circular(8)),
              child: Container(
                height: 200,
                margin: const EdgeInsets.only(left: 1, bottom: 1),
                color: AppColor.yellow200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('日数分購入', style: planTextStyle),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 8),
                            Text('・1日  300円', style: planTextStyle),
                            Text('・3日  855円', style: planTextStyle),
                            Text('・5日  1,480円', style: planTextStyle),
                            Text('・7日  2,070円', style: planTextStyle),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(width: 12),
                    Text(
                      'または',
                      style: AppTextStyle.textStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('永年分', style: planTextStyle),
                        const SizedBox(width: 12),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('25800円', style: planTextStyle),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
