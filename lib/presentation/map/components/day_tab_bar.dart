import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../utils/styles/app_color.dart';
import '../../../utils/styles/app_text_style.dart';
import 'day_selection_button.dart';

class DayTabBar extends StatelessWidget {
  const DayTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ColoredBox(
          color: AppColor.white,
          child: TabBar(
            tabs: const [
              Tab(
                text: '参考プラン',
              ),
              Tab(text: 'マップ'),
            ],
            labelStyle:
                AppTextStyle.textStyle.copyWith(fontWeight: FontWeight.bold),
            unselectedLabelStyle: AppTextStyle.textStyle.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColor.grey800,
            ),
            indicator: const UnderlineTabIndicator(
              borderSide: BorderSide(color: AppColor.black, width: 2),
            ),
            indicatorSize: TabBarIndicatorSize.tab,
          ),
        ),
        Container(
          color: AppColor.white, // 背景色を指定
          width: double.infinity,
          child: const SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                DaySelectionButton(
                  text: '1日目',
                  isSelected: true,
                ),
                Gap(8),
                DaySelectionButton(
                  text: '2日目',
                  isSelected: false,
                ),
                Gap(8),
                DaySelectionButton(
                  text: '3日目',
                  isSelected: false,
                ),
                Gap(8),
                DaySelectionButton(
                  text: '4日目',
                  isSelected: false,
                ),
                Gap(8),
                DaySelectionButton(
                  text: '5日目',
                  isSelected: false,
                ),
                Gap(8),
                DaySelectionButton(
                  text: '6日目',
                  isSelected: false,
                ),
                Gap(8),
                DaySelectionButton(
                  text: '7日目',
                  isSelected: false,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
