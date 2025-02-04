import 'package:flutter/material.dart';
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
    final notifier = ref.read(billDetailPageNotifierProvider.notifier);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        WideButton(
          label: i18n.billDetailsPage.restorePurchaseSection.button,
          color: AppColor.grey200,
          onPressed: notifier.restorePurhcaseItem,
        ),
        TextButton(
          onPressed: () async => ref
              .read(billDetailPageNotifierProvider.notifier)
              .restorePurhcaseItem(),
          child: Text(
            i18n.billDetailsPage.restorePurchaseSection.textButton,
            style: AppTextStyle.textStyle.copyWith(
              color: AppColor.grey800,
              decoration: TextDecoration.underline,
              decorationColor: AppColor.grey600,
            ),
          ),
        ),
      ],
    );
  }
}
