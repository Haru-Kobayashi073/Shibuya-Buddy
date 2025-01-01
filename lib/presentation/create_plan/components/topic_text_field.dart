import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../../i18n/strings.g.dart';
import '../../../utils/styles/app_color.dart';
import '../../../utils/styles/app_text_style.dart';

class TopicTextField extends StatelessWidget {
  const TopicTextField({
    super.key,
    this.controller,
    this.onClear,
  });

  final TextEditingController? controller;
  final VoidCallback? onClear;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          minLines: 1,
          maxLines: 2,
          readOnly: true,
          controller: controller,
          textInputAction: TextInputAction.next,
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
            labelText: t.createPlanPage.label.topics,
            prefixIcon: const Icon(Symbols.emoji_objects),
            suffixIcon: (controller != null && controller!.text.isNotEmpty)
                ? IconButton(
                    onPressed: () {
                      controller?.clear();
                      onClear?.call();
                    },
                    icon: const Icon(Symbols.close),
                  )
                : null,
          ),
        ),
      ],
    );
  }
}
