import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../../i18n/strings.g.dart';
import '../../../utils/styles/app_color.dart';
import 'plan_text_field.dart';

class ScheduleSelector extends StatelessWidget {
  const ScheduleSelector({
    super.key,
    required this.dateController,
    required this.isStartDate,
    required this.onTap,
  });
  final TextEditingController dateController;
  final bool isStartDate;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PlanTextField(
        prefixIcon: const Icon(
          Symbols.calendar_month,
          color: AppColor.blue800Secondary,
        ),
        hintText: isStartDate
            ? t.createPlanPage.label.scheduleStart
            : t.createPlanPage.label.scheduleEnd,
        controller: dateController,
        onTap:onTap,
      ),
    );
  }
}
