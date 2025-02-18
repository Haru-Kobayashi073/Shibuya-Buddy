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
    // readOnly フラグをもとに、TextField の有効／無効を切り替える
    return TextField(
      // readOnly でもユーザーがタップできてしまうので、
      // 見た目上わかりやすいように enabled を制御する
      readOnly: readOnly,
      // readOnly の場合はカーソルを非表示にする
      showCursor: false,
      onTap: onTap,
      controller: controller,
      keyboardType: keyboardType,
      textInputAction: TextInputAction.next,
      inputFormatters: inputFormatters,
      minLines: 1,
      maxLines: 2,
      decoration: InputDecoration(
        // ラベルテキスト
        // 背景色を「編集不可」のときだけ変えたい場合は条件分岐する
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
