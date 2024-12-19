import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../utils/styles/app_color.dart';
import '../../../utils/styles/app_text_style.dart';

class PlanTextField extends StatelessWidget {
  const PlanTextField({
    super.key,
    this.label,
    this.hintText,
    this.prefixIcon,
    this.controller,
    this.readOnly = false,
    this.keyboardType,
    this.inputFormatters,
    this.onTap,
  });

  final String? label;
  final String? hintText;
  final Icon? prefixIcon;
  final TextEditingController? controller;
  final bool readOnly;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: onTap,
          child: AbsorbPointer(
            child: TextField(
              minLines: 1,
              maxLines: 2,
              controller: controller,
              readOnly: readOnly,
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
                hintText: hintText,
                labelText: label,
                prefixIcon: prefixIcon,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
