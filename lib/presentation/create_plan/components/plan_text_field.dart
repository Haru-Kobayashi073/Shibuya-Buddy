import 'package:flutter/material.dart';

import '../../../utils/styles/app_color.dart';

class PlanTextField extends StatelessWidget {
  const PlanTextField({
    super.key,
    this.label,
    this.hintText,
    this.initialValue,
    this.prefixIcon,
    this.suffixIcon,
    this.readOnly = false,
    this.onClear,
  });

  final String? label;
  final String? hintText;
  final String? initialValue;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final bool readOnly;
  final VoidCallback? onClear;

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController(text: initialValue);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          controller: controller,
          readOnly: readOnly,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            fillColor: AppColor.blue800Secondary,
            hintText: hintText,
            labelText: label,
            prefixIcon: prefixIcon,
            suffixIcon: controller.text.isNotEmpty && suffixIcon != null
                ? IconButton(
                    onPressed: () {
                      controller.clear();
                      onClear?.call();
                    },
                    icon: suffixIcon!,
                  )
                : null,
          ),
        ),
      ],
    );
  }
}
