import 'package:flutter/material.dart';

import '../../../utils/styles/app_color.dart';
import '../../../utils/styles/app_text_style.dart';

class WideButtonLeftIcon extends StatelessWidget {
  const WideButtonLeftIcon({
    super.key,
    required this.title,
    required this.icon,
  });
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.grey200,
        elevation: 0,
      ),
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.only(top: 16, bottom: 16),
        child: Stack(
          alignment: Alignment.center,
          children: [
            const Row(
              children: [
                Icon(Icons.pin_drop_outlined),
              ],
            ),
            Center(
              child: Text(
                title,
                style: AppTextStyle.textStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
