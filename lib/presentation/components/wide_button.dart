import 'package:flutter/material.dart';
import '../../utils/styles/app_color.dart';
import '../../utils/styles/app_text_style.dart';

class WideButton extends StatelessWidget {
  const WideButton({
    super.key,
    required this.label,
    required this.color,
    this.icon = const SizedBox(),
    this.border = BorderSide.none,
    required this.onPressed,
  });

  factory WideButton.icon({
    required String label,
    required Color color,
    required Widget icon,
    required VoidCallback onPressed,
  }) {
    return WideButton(
      label: label,
      color: color,
      onPressed: onPressed,
      icon: icon,
    );
  }

  factory WideButton.border({
    required String label,
    required Color color,
    required BorderSide border,
    required VoidCallback onPressed,
  }) {
    return WideButton(
      label: label,
      color: color,
      border: border,
      onPressed: onPressed,
    );
  }

  final Widget icon;
  final String label;
  final Color color;
  final BorderSide border;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: FilledButton.icon(
        style: FilledButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(Radius.circular(32)),
            side: border,
          ),
          padding: const EdgeInsets.symmetric(vertical: 16),
          backgroundColor: color,
        ),
        onPressed: onPressed,
        icon: icon,
        label: Text(
          label,
          style: AppTextStyle.textStyle.copyWith(
            fontSize: 14,
            color: AppColor.black,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
