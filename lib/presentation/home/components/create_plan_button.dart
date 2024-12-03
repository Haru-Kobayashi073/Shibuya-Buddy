import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../../utils/routes/app_router.dart';
import '../../../utils/styles/app_color.dart';

class CreatePlanButton extends StatelessWidget {
  const CreatePlanButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () async {
        await const CreatePlanPageRouteData().push<void>(context);
      },
      backgroundColor: AppColor.yellow600Primary,
      elevation: 0,
      child: const Icon(Symbols.new_window),
    );
  }
}
