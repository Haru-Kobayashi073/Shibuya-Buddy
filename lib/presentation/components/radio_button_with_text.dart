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
class RadioButtonWithText<T> extends StatelessWidget {
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
  final void Function(T) onChanged;

  @override
  Widget build(BuildContext context) {
    return RadioListTile<T>(
      fillColor: WidgetStateProperty.resolveWith(
        (states) {
          if (states.contains(WidgetState.selected)) {
            return AppColor.yellow600Primary;
          }
          return AppColor.grey600;
        },
      ),
      title: Text(
        title,
        style: AppTextStyle.textStyle.copyWith(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      value: value,
      groupValue: groupValue,
      onChanged: (selectedValue) {
        if (selectedValue != null) {
          onChanged(selectedValue);
        }
      },
    );
  }
}
