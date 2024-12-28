import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../utils/styles/app_text_style.dart';

class PremiumPlan extends StatelessWidget {
  const PremiumPlan({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'プレミアムプラン',
          style: AppTextStyle.textStyle.copyWith(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Gap(8),
        Text(
          'プレミアムプランに加入することで、\n'
          'より快適に渋谷観光をお楽しみいただけます。',
          textAlign: TextAlign.center,
          style: AppTextStyle.textStyle.copyWith(
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
