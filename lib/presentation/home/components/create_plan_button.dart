import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../../utils/styles/app_color.dart';

class CreatePlanButton extends StatelessWidget {
  const CreatePlanButton({
    super.key,
    required this.onPressed,
  });
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: AppColor.yellow600Primary,
      elevation: 0,
      child: const Icon(Symbols.new_window),
    );
  }
}
