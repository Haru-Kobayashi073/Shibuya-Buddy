import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../utils/styles/app_color.dart';
import '../../../utils/styles/app_text_style.dart';

class PlanTextField extends StatelessWidget {
  const PlanTextField({
    super.key,
    required this.label,
    required this.prefixIcon,
    required this.controller,
    this.keyboardType,
    this.inputFormatters,
    this.onTap,
  });

  final String label;
  final Widget prefixIcon;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AbsorbPointer(
        child: TextField(
          minLines: 1,
          maxLines: 2,
          controller: controller,
          keyboardType: keyboardType,
          textInputAction: TextInputAction.next,
          inputFormatters: inputFormatters,
          decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColor.blue800Secondary),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColor.blue800Secondary),
            ),
            disabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColor.blue800Secondary),
            ),
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColor.blue800Secondary),
            ),
            labelStyle: AppTextStyle.textStyle.copyWith(
              color: AppColor.black,
            ),
            labelText: label,
            prefixIcon: prefixIcon,
          ),
        ),
      ),
    );
  }
}
