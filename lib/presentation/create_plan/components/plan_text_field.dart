import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../utils/styles/app_color.dart';
import '../../../utils/styles/app_text_style.dart';

class PlanTextField extends StatelessWidget {
  const PlanTextField({
    super.key,
    required this.prefixIcon,
    required this.controller,
    this.keyboardType,
    this.inputFormatters,
    this.onTap,
    this.readOnly = false,
    this.hintText,
  });

  final Widget prefixIcon;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final VoidCallback? onTap;
  final bool readOnly;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: readOnly,
      showCursor: false,
      onTap: onTap,
      controller: controller,
      keyboardType: keyboardType,
      textInputAction: TextInputAction.next,
      inputFormatters: inputFormatters,
      minLines: 1,
      maxLines: 2,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColor.blue50Background,
        prefixIcon: prefixIcon,
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 14,
          horizontal: 8,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        hintText: hintText,
        hintStyle: AppTextStyle.textStyle.copyWith(color: AppColor.black),
      ),
    );
  }
}
