import 'package:flutter/material.dart';

import '../../../utils/styles/app_color.dart';
import '../../../utils/styles/app_text_style.dart';
import '../../components/wide_button.dart';

class EmptyDataView extends StatelessWidget {
  const EmptyDataView({
    super.key,
    required this.message,
    required this.labelText,
    required this.onPressed,
  });
  final String message;
  final String labelText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              message,
              textAlign: TextAlign.center,
              style: AppTextStyle.textStyle.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColor.grey600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 50, right: 50),
            child: WideButton(
              label: labelText,
              color: AppColor.yellow600Primary,
              onPressed: onPressed,
            ),
          ),
        ],
      ),
    );
  }
}
