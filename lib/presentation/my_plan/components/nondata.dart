import 'package:flutter/material.dart';

import '../../../utils/styles/app_color.dart';
import '../../../utils/styles/app_text_style.dart';

class Nondata extends StatelessWidget {
  const Nondata({
    super.key,
    required this.message,
  });
  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        message,
        style: AppTextStyle.textStyle.copyWith(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: AppColor.grey600,
        ),
      ),
    );
  }
}
