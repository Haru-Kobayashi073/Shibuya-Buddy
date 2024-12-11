import 'package:flutter/material.dart';

import '../../../utils/styles/app_text_style.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    required this.label,
    required this.fontSize,
    required this.onPressed,
    required this.iconSize,
  });

  factory SectionTitle.large({
    required String label,
    required void Function() onPressed,
  }) {
    return SectionTitle(
      label: label,
      fontSize: 24,
      onPressed: onPressed,
      iconSize: 24,
    );
  }

  factory SectionTitle.medium({
    required String label,
    required void Function() onPressed,
  }) {
    return SectionTitle(
      label: label,
      fontSize: 20,
      onPressed: onPressed,
      iconSize: 20,
    );
  }

  final String label;
  final double fontSize;
  final void Function() onPressed;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          label,
          style: AppTextStyle.textStyle.copyWith(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
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
