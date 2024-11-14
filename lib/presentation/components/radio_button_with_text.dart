import 'package:flutter/material.dart';

import '../../utils/styles/app_color.dart';
import '../../utils/styles/app_text_style.dart';

/// RadioButtonWithText
/// example usage:
/// ```dart
///   RadioButtonWithText <T>(
///     title: '日本語',
///      value: Languages.japanese,
///      groupValue: selectLanguage,
///      onChanged: (value) {
///        setState(() {
///          if (value != null) {
///            debugPrint('TapJapanese');
///            selectLanguage = value;
///          }
///        });
///      },
///    ),
/// ```
class RadioButtonWithText<T> extends StatefulWidget {
  const RadioButtonWithText({
    super.key,
    required this.title,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });

  final String title;
  final T value;
  final T groupValue;
  final void Function(T?) onChanged;

  @override
  State<RadioButtonWithText<T>> createState() => _RadiobuttonTextState<T>();
}

class _RadiobuttonTextState<T> extends State<RadioButtonWithText<T>> {
  @override
  Widget build(BuildContext context) {
    return RadioListTile<T>(
      activeColor: AppColor.yellow600Primary,
      title: Text(
        widget.title,
        style: AppTextStyle.textStyle.copyWith(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      value: widget.value,
      groupValue: widget.groupValue,
      onChanged: (selectedValue) {
        if (selectedValue != null) {
          widget.onChanged(selectedValue);
        }
      },
    );
  }
}
