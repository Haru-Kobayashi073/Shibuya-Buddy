import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../i18n/strings.g.dart';
import '../../../utils/styles/app_text_style.dart';

class PremiumPlan extends StatelessWidget {
  const PremiumPlan({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          t.billDetailsPage.title,
          style: AppTextStyle.textStyle.copyWith(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Gap(8),
        Text(
          t.billDetailsPage.description,
          textAlign: TextAlign.center,
          style: AppTextStyle.textStyle.copyWith(
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
