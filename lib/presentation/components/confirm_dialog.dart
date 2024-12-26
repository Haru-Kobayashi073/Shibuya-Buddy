import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../utils/styles/app_color.dart';
import '../../utils/styles/app_text_style.dart';

class ConfirmDialog extends StatelessWidget {
  const ConfirmDialog({
    super.key,
    required this.onConfirm,
    required this.titleText,
    required this.bodyText,
  });
  final VoidCallback onConfirm;
  final String titleText;
  final String bodyText;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColor.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              titleText,
              style: AppTextStyle.textStyle.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColor.black,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              bodyText,
              style: AppTextStyle.textStyle.copyWith(
                fontSize: 14,
                color: AppColor.grey600,
              ),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 36,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: AppColor.blue50Background,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                    ),
                    onPressed: () => context.pop(false),
                    child: Text(
                      'いいえ',
                      style: AppTextStyle.textStyle.copyWith(
                        color: AppColor.black,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                SizedBox(
                  height: 36,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: AppColor.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                    ),
                    onPressed: () {
                      context.pop(true);
                      onConfirm();
                    },
                    child: Text(
                      'はい',
                      style: AppTextStyle.textStyle.copyWith(
                        color: AppColor.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
