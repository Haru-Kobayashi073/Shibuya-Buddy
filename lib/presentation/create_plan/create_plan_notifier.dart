import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'create_plan_state.dart';

part 'create_plan_notifier.g.dart';

@riverpod
class CreatePlanNotifier extends _$CreatePlanNotifier {
  CreatePlanNotifier() {
    locationController = TextEditingController();
    startDateController = TextEditingController();
    endDateController = TextEditingController();
    numberOfPeopleController = TextEditingController();
    transportController = TextEditingController();
    categoryController = TextEditingController();
    topicsController = TextEditingController();
  }
  late final TextEditingController locationController;
  late final TextEditingController startDateController;
  late final TextEditingController endDateController;
  late final TextEditingController numberOfPeopleController;
  late final TextEditingController transportController;
  late final TextEditingController categoryController;
  late final TextEditingController topicsController;
  DateTime? selectedDate;

  @override
  CreatePlanState build() {
    return const CreatePlanState();
  }

  void clearTopics() {
    state = state.copyWith(selectedTopics: []);
  }

  void updateSelectedTopics(List<String> topics) {
    state = state.copyWith(selectedTopics: topics)..selectedTopics.join(', ');
  }

  void updateTopicsController() {
    topicsController.text = state.selectedTopics.join(', ');
  }

  void updateDate(DateTime newDate, TextEditingController targetController) {
    selectedDate = newDate;
    final formatter = DateFormat('M/d(E)', 'ja');
    targetController.text = formatter.format(newDate);
  }

  Future<void> showCupertinoDatePicker(
    BuildContext context,
    TextEditingController targetController,
  ) async {
    await showCupertinoModalPopup<void>(
      context: context,
      builder: (context) {
        return SizedBox(
          height: 300,
          child: CupertinoDatePicker(
            initialDateTime: selectedDate ?? DateTime.now(),
            mode: CupertinoDatePickerMode.date,
            onDateTimeChanged: (date) => updateDate(date, targetController),
          ),
        );
      },
    );
  }
}
