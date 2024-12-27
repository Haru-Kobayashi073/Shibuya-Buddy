import 'package:flutter/material.dart';

import '../../../utils/styles/app_color.dart';
import '../../../utils/styles/app_text_style.dart';

class PlanTable extends StatelessWidget {
  const PlanTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: const {
        0: FlexColumnWidth(),
        1: FlexColumnWidth(2),
      },
      children: [
        // 1行目（ヘッダー行）
        TableRow(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 8,
              ),
              color: AppColor.blue50Background,
              child: Text(
                'スタンダード',
                style: AppTextStyle.textStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 8,
              ),
              color: AppColor.yellow200,
              child: Text(
                'プレミアム',
                style: AppTextStyle.textStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        // 2行目（プラン内容）
        TableRow(
          children: [
            // 左カラム: スタンダード(無料)
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(16),
              color: AppColor.blue50Background,
              child: Text(
                '無料 🎉',
                style: AppTextStyle.textStyle.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // 右カラム: プレミアム(日数分購入 or 永年分)
            Container(
              padding: const EdgeInsets.all(16),
              color: AppColor.yellow200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '日数分購入',
                    style: AppTextStyle.textStyle.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '・1日  300円',
                    style: AppTextStyle.textStyle,
                  ),
                  Text(
                    '・3日  855円',
                    style: AppTextStyle.textStyle,
                  ),
                  Text(
                    '・5日  1,480円',
                    style: AppTextStyle.textStyle,
                  ),
                  Text(
                    '・7日  2,070円',
                    style: AppTextStyle.textStyle,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'または',
                    style: AppTextStyle.textStyle.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '永年分  25,800円',
                    style: AppTextStyle.textStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
