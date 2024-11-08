import 'package:flutter/material.dart';

import '../../../utils/styles/app_text_style.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    required this.label,
    required this.fontsize,
    required this.onPressed,
    required this.iconSize,
    });

  final String label;
  final double fontsize;
  final GestureTapCallback onPressed;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          child: Text(
            label,
            style: AppTextStyle.textStyle.copyWith(
              fontSize: fontsize,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          width: 28,
          height: 28,
          child: IconButton(
            icon: const Icon(Icons.arrow_forward_ios),
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            onPressed: onPressed,
            iconSize: iconSize,
          ),
        ),
      ],
    );
  }
}
