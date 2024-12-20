import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../../i18n/strings.g.dart';
import '../../../utils/styles/app_color.dart';
import '../../../utils/styles/app_text_style.dart';

class CustomCupertinoDatePicker extends StatelessWidget {
  const CustomCupertinoDatePicker({
    super.key,
    required this.targetController,
    required this.onDateTimeChanged,
  });
  final TextEditingController targetController;
  final ValueChanged<DateTime> onDateTimeChanged;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        color: AppColor.white,
        height: 350,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    t.createPlanPage.modal.title,
                    style: AppTextStyle.textStyle.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColor.black,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Symbols.close),
                  ),
                ],
              ),
            ),
            const Divider(),
            Expanded(
              child: CupertinoDatePicker(
                initialDateTime: DateTime.now(),
                onDateTimeChanged: onDateTimeChanged,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
