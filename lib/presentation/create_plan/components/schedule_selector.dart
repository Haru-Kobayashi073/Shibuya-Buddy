import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../../i18n/strings.g.dart';
import '../../../utils/styles/app_color.dart';
import '../create_plan_notifier.dart';
import 'plan_text_field.dart';

class ScheduleSelector extends StatelessWidget {
  const ScheduleSelector({
    super.key,
    required this.dateController,
    required this.planNotifier,
    required this.isStartDate,
  });

  final TextEditingController dateController;

  final CreatePlanNotifier planNotifier;

  final bool isStartDate;

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
        onTap: () async {
          await planNotifier.showCupertinoDatePicker(
            context,
            dateController,
            isStartDate: isStartDate,
          );
        },
      ),
    );
  }
}
