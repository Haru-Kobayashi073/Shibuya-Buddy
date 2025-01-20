import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../i18n/strings.g.dart';
import '../../../utils/billing_grade_options.dart';
import '../../../utils/extensions/context.dart';
import '../../../utils/styles/app_text_style.dart';

class PremiumPlan extends StatelessWidget {
  const PremiumPlan({
    super.key,
    required this.feature,
  });
  final BillingLimitedFeatures feature;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: context.deviceWidth * 0.6,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: AppTextStyle.textStyle.copyWith(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
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

  String get title {
    return switch (feature) {
      BillingLimitedFeatures.none => t.billDetailsPage.title.defaultTitle,
      BillingLimitedFeatures.createPlan => t.billDetailsPage.title.createPlan,
      BillingLimitedFeatures.chatToBuddy => t.billDetailsPage.title.chat,
    };
  }
}
