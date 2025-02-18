import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../i18n/strings.g.dart';
import '../create_plan_notifier.dart';
import 'plan_text_field.dart';

/// 日付選択用ウィジェット（入力フィールドのみを表示）
class ScheduleSelector extends StatelessWidget {
  const ScheduleSelector({
    super.key,
    required this.dateController,
    required this.planNotifier,
    required this.isStartDate,
  });

  /// 日付を表示・管理するコントローラー
  final TextEditingController dateController;

  /// 日付選択ロジックを扱う Notifier
  final CreatePlanNotifier planNotifier;

  /// 開始日か終了日かを判別するフラグ
  final bool isStartDate;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PlanTextField(
        prefixIcon: const Icon(Icons.calendar_month),
        label: isStartDate
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
