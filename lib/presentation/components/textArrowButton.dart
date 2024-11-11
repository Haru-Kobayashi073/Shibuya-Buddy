import 'package:flutter/material.dart';
import '../../utils/styles/app_text_style.dart';
class Textarrowbutton extends StatelessWidget {
  const Textarrowbutton({
    super.key,
    required this.text,
    required this.onTapCallback,
  });
  final String text;
  final VoidCallback onTapCallback;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 14, bottom: 14),
      child: GestureDetector(
        onTap: onTapCallback,
        child: Row(
          children: [
            Text(
              text,
              style: AppTextStyle.textStyle.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios, size: 24),
          ],
        ),
      ),
    );
  }
}
