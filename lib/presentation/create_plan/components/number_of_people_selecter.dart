import 'package:flutter/material.dart';

import '../../../utils/styles/app_color.dart';
import '../../../utils/styles/app_text_style.dart';

class DottedLine extends StatelessWidget {
  const DottedLine({super.key});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        const dashWidth = 4.0;
        const dashHeight = 1.0;
        final dashCount =
            (constraints.constrainWidth() / (dashWidth * 2)).floor();
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            dashCount,
            (_) => const SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: AppColor.grey200),
              ),
            ),
          ),
        );
      },
    );
  }
}

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
          count: adultCount,
          onIncrement: onIncrementAdult,
          onDecrement: onDecrementAdult,
          withDottedLine: true,
        ),
        const SizedBox(height: 8),
        _buildRow(
          label: '子供',
          count: childCount,
          onIncrement: onIncrementChild,
          onDecrement: onDecrementChild,
        ),
      ],
    );
  }

  Widget _buildRow({
    required String label,
    required int count,
    required VoidCallback onIncrement,
    required VoidCallback onDecrement,
    bool withDottedLine = false,
  }) {
    final rowContent = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: AppTextStyle.textStyle.copyWith(fontSize: 14)),
        DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(color: AppColor.blue800Secondary),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: onDecrement,
                iconSize: 16,
                icon: const Icon(Icons.remove),
              ),
              Text(
                '$count',
                style: AppTextStyle.textStyle.copyWith(fontSize: 16),
              ),
              IconButton(
                onPressed: onIncrement,
                iconSize: 16,
                icon: const Icon(Icons.add),
              ),
            ],
          ),
        ),
      ],
    );
    return withDottedLine
        ? Column(
            children: [
              rowContent,
              const SizedBox(height: 8),
              const DottedLine(),
            ],
          )
        : rowContent;
  }
}
