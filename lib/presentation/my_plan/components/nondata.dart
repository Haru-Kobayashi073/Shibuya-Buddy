import 'package:flutter/material.dart';

import '../../../utils/styles/app_color.dart';
import '../../../utils/styles/app_text_style.dart';
import '../../components/wide_button.dart';

class Nondata extends StatelessWidget {
  const Nondata({
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
          Text(
            message,
            style: AppTextStyle.textStyle.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColor.grey600,
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
