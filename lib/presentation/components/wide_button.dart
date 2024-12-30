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
    this.gradient,
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

  factory WideButton.gradient({
    required String label,
    required Gradient gradient,
    required VoidCallback onPressed,
    Widget icon = const SizedBox(),
    BorderSide border = BorderSide.none,
  }) {
    return WideButton(
      label: label,
      color: Colors.transparent, // Gradientを優先するため透明色
      gradient: gradient,
      onPressed: onPressed,
      icon: icon,
      border: border,
    );
  }

  final Widget icon;
  final String label;
  final Color color;
  final BorderSide border;
  final VoidCallback onPressed;
  final Gradient? gradient;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: gradient,
          color: gradient == null ? color : null,
          borderRadius: BorderRadius.circular(32),
          border: Border.fromBorderSide(border),
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: const BorderRadius.all(Radius.circular(32)),
              side: border,
            ),
            padding: const EdgeInsets.symmetric(vertical: 16),
            backgroundColor: color,
            elevation: 0,
          ),
          onPressed: onPressed,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Offstage(
                offstage: icon == const SizedBox(),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Row(
                    children: [
                      icon,
                    ],
                  ),
                ),
              ),
              Center(
                child: Text(
                  label,
                  style: AppTextStyle.textStyle.copyWith(
                    fontSize: 14,
                    color: AppColor.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
