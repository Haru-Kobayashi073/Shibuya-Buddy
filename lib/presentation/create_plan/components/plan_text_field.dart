import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../utils/styles/app_color.dart';

class PlanTextField extends StatelessWidget {
  const PlanTextField({
    super.key,
    this.label,
    this.hintText,
    this.initialValue,
    this.prefixIcon,
    this.controller,
    this.readOnly = false,
    this.keyboardType,
    this.inputFormatters,
    this.onClear,
    this.onTap,
  });

  final String? label;
  final String? hintText;
  final String? initialValue;
  final Icon? prefixIcon;
  final TextEditingController? controller;
  final bool readOnly;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final VoidCallback? onClear;
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
              controller: controller,
              readOnly: readOnly,
              keyboardType: keyboardType,
              textInputAction: TextInputAction.next,
              inputFormatters: inputFormatters,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                fillColor: AppColor.blue800Secondary,
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
