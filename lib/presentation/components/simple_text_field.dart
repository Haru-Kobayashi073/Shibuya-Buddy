import 'package:flutter/material.dart';

import '../../utils/styles/app_color.dart';
import '../../utils/styles/app_text_style.dart';

class SimpleTextField extends StatelessWidget {
  const SimpleTextField({
    super.key,
    required this.controller,
    this.focusNode,
    required this.keyboardType,
    required this.textInputAction,
    this.obscureText = false,
    required this.validator,
    required this.onFieldSubmitted,
    this.icon,
    required this.label,
  });
  final TextEditingController controller;
  final FocusNode? focusNode;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final bool obscureText;
  final String? Function(String?) validator;
  final void Function(String) onFieldSubmitted;
  final Widget? icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      obscureText: obscureText,
      validator: validator,
      cursorColor: AppColor.blue800Secondary,
      style: AppTextStyle.textStyle.copyWith(
        color: AppColor.black,
      ),
      decoration: InputDecoration(
        suffixIcon: icon,
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColor.blue800Secondary,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColor.blue800Secondary,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColor.blue800Secondary,
            width: 2,
          ),
        ),
        label: Text(
          label,
          style: AppTextStyle.textStyle.copyWith(
            color: AppColor.blue900Tertiary,
          ),
        ),
      ),
    );
  }
}
