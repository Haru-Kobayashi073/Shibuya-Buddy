import 'package:flutter/material.dart';

import '../../../utils/styles/app_color.dart';
import '../../../utils/styles/app_text_style.dart';

class NumberOfPeopleSelecter extends StatelessWidget {
  const NumberOfPeopleSelecter({
    super.key,
    required this.adultCount,
    required this.childCount,
    required this.onIncrementAdult,
    required this.onDecrementAdult,
    required this.onIncrementChild,
    required this.onDecrementChild,
  });

  final int adultCount;
  final int childCount;
  final VoidCallback onIncrementAdult;
  final VoidCallback onDecrementAdult;
  final VoidCallback onIncrementChild;
  final VoidCallback onDecrementChild;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildRow(
          label: '大人',
          subtitle: '（13歳以上）',
          count: adultCount,
          onIncrement: onIncrementAdult,
          onDecrement: onDecrementAdult,
        ),
        const SizedBox(height: 4),
        _buildRow(
          label: '子ども',
          subtitle: '（13歳未満）',
          count: childCount,
          onIncrement: onIncrementChild,
          onDecrement: onDecrementChild,
        ),
      ],
    );
  }

  Widget _buildRow({
    required String label,
    required String subtitle,
    required int count,
    required VoidCallback onIncrement,
    required VoidCallback onDecrement,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // RichText を使って、ラベル部分は濃い色、補足部分は薄い色で表示
        RichText(
          text: TextSpan(
            text: label,
            style: AppTextStyle.textStyle.copyWith(
              fontSize: 14,
              color: AppColor.black, // 濃い色
            ),
            children: [
              TextSpan(
                text: subtitle,
                style: AppTextStyle.textStyle.copyWith(
                  fontSize: 14,
                  color: Colors.grey, // 薄い色
                ),
              ),
            ],
          ),
        ),
        DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(color: AppColor.blue800Secondary),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  padding: EdgeInsets.zero,
                  constraints:
                      const BoxConstraints(minWidth: 24, minHeight: 24),
                  onPressed: onDecrement,
                  iconSize: 14,
                  icon: const Icon(Icons.remove),
                ),
                Text(
                  '$count',
                  style: AppTextStyle.textStyle.copyWith(fontSize: 14),
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  constraints:
                      const BoxConstraints(minWidth: 24, minHeight: 24),
                  onPressed: onIncrement,
                  iconSize: 14,
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
