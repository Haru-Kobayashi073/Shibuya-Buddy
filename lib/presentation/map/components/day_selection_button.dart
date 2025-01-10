import 'package:flutter/material.dart';

import '../../../utils/styles/app_color.dart';
import '../../../utils/styles/app_text_style.dart';

class DaySelectionButton extends StatelessWidget {
  const DaySelectionButton({
    super.key,
    required this.text,
    required this.isSelected,
  });
  final String text;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor:
            isSelected ? AppColor.blue600Primary : AppColor.blue50Background,
      ),
      onPressed: () {},
      child: Text(
        text,
        style: AppTextStyle.textStyle.copyWith(
          fontWeight: FontWeight.bold,
          color: isSelected ? AppColor.white : AppColor.black,
        ),
      ),
    );
  }
}
