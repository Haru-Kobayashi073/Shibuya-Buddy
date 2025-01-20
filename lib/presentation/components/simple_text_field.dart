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
    this.maxBytes,
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
  final int? maxBytes;

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
      onChanged: (value) {
        if (maxBytes != null) {
          final byteCount = value.runes.fold(0, (sum, char) {
            return sum + (char > 255 ? 2 : 1); // 全角:2バイト, 半角:1バイト
          });
          if (byteCount > maxBytes!) {
            // 制限を超えた場合にトリミング
            var truncatedValue = '';
            var currentByteCount = 0;
            for (final char in value.runes) {
              final charBytes = char > 255 ? 2 : 1;
              if (currentByteCount + charBytes <= maxBytes!) {
                truncatedValue += String.fromCharCode(char);
              }
              currentByteCount += charBytes;
            }
            controller
              ..text = truncatedValue
              ..selection = TextSelection.fromPosition(
                TextPosition(offset: truncatedValue.length),
              );
          }
        }
      },
      onFieldSubmitted: onFieldSubmitted,
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
