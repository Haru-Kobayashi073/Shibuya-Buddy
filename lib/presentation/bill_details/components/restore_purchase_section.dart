import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../utils/styles/app_color.dart';
import '../../../utils/styles/app_text_style.dart';
import '../../components/wide_button.dart';
import '../bill_detail_page_notifier.dart';

class RestorePurchaseSection extends ConsumerWidget {
  const RestorePurchaseSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i18n = Translations.of(context);

    return Column(
      children: [
        Text(
          i18n.billDetailsPage.restorePurchaseSection.title,
          style: AppTextStyle.textStyle.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Gap(16),
        Text(
          i18n.billDetailsPage.restorePurchaseSection.description,
          textAlign: TextAlign.center,
          style: AppTextStyle.textStyle.copyWith(
            fontSize: 16,
          ),
        ),
        const Gap(16),
        WideButton(
          label: i18n.billDetailsPage.restorePurchaseSection.button,
          color: AppColor.grey200,
          onPressed: () async => ref
              .read(billDetailPageNotifierProvider.notifier)
              .restorePurhcaseItem(),
        ),
      ],
    );
  }
}
