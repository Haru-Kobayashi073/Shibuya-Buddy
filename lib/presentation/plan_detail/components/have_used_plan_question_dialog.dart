import 'package:flutter/material.dart';

import '../../../i18n/strings.g.dart';
import '../../../utils/styles/app_color.dart';
import '../../../utils/styles/app_text_style.dart';

class HaveUsedPlanQuestionDialog extends StatelessWidget {
  const HaveUsedPlanQuestionDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = Translations.of(context);
    final planDetailPagei18n = i18n.planDetailsPage;

    return AlertDialog(
      title: Text(
        planDetailPagei18n.dialog.title,
        style: AppTextStyle.textStyle.copyWith(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: AppColor.black,
        ),
      ),
      content: Text(
        planDetailPagei18n.dialog.description,
        style: AppTextStyle.textStyle.copyWith(fontSize: 14),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(
            planDetailPagei18n.dialog.button,
            style: AppTextStyle.textStyle.copyWith(
              fontSize: 14,
            ),
          ),
        ),
      ],
      actionsAlignment: MainAxisAlignment.center,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      backgroundColor: AppColor.white,
      contentPadding: const EdgeInsets.all(16),
    );
  }
}
