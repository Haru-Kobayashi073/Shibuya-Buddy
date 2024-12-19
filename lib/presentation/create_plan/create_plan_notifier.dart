import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../i18n/strings.g.dart';
import 'components/custom_cupertino_date_picker.dart';
import 'create_plan_state.dart';

part 'create_plan_notifier.g.dart';

@riverpod
class CreatePlanNotifier extends _$CreatePlanNotifier {
  @override
  CreatePlanState build() {
    return const CreatePlanState();
  }

  void clearTopics() {
    state = state.copyWith(selectedTopics: []);
  }

  void updateSelectedTopics(List<String> topics) {
    state = state.copyWith(selectedTopics: topics);
  }

  void setStartDate(DateTime date) {
    state = state.copyWith(startDate: date);
  }

  void setEndDate(DateTime date) {
    state = state.copyWith(endDate: date);
  }

  String formatDate(DateTime date) {
    final currentLocale = LocaleSettings.currentLocale.languageCode;
    final pattern = {
          'ja': 'M/d(E) hh:mm a',
          'en': 'MMM d, E hh:mm a',
          'zh-Hant': 'M月d日 EEEE hh:mm a',
          'zh-Hans': 'M月d日 EEEE hh:mm a',
        }[currentLocale] ??
        'MMM d, EEEE HH:mm';

    final formatter = DateFormat(pattern, currentLocale);
    return formatter.format(date);
  }

  void updateSingleSelection(SelectionField field, String item) {
    switch (field) {
      case SelectionField.transport:
        state = state.copyWith(selectedTransport: [item]);
      case SelectionField.numberOfPeople:
        state = state.copyWith(selectedNumberofPeople: [item]);
      case SelectionField.category:
        state = state.copyWith(selectedCategory: [item]);
    }
  }

  void toggleSelection(SelectionField field, String item) {
    switch (field) {
      case SelectionField.transport:
        _toggleListField(
          selectedItems: state.selectedTransport,
          item: item,
          updateField: (updatedList) =>
              state = state.copyWith(selectedTransport: updatedList),
        );
      case SelectionField.numberOfPeople:
        _toggleListField(
          selectedItems: state.selectedNumberofPeople,
          item: item,
          updateField: (updatedList) =>
              state = state.copyWith(selectedNumberofPeople: updatedList),
        );
      case SelectionField.category:
        _toggleListField(
          selectedItems: state.selectedCategory,
          item: item,
          updateField: (updatedList) =>
              state = state.copyWith(selectedCategory: updatedList),
        );
    }
  }

  void _toggleListField({
    required List<String> selectedItems,
    required String item,
    required void Function(List<String>) updateField,
  }) {
    final updatedList = selectedItems.contains(item)
        ? selectedItems.where((i) => i != item).toList()
        : [...selectedItems, item];
    updateField(updatedList);
  }

  Future<void> showCupertinoDatePicker(
    BuildContext context,
    TextEditingController targetController, {
    required bool isStartDate,
  }) async {
    var chosenDate = DateTime.now();

    await showCupertinoModalPopup<void>(
      context: context,
      builder: (context) {
        return CustomCupertinoDatePicker(
          targetController: targetController,
          onDateTimeChanged: (date) {
            chosenDate = date;
            targetController.text = formatDate(date);
          },
        );
      },
    );

    if (isStartDate) {
      setStartDate(chosenDate);
    } else {
      setEndDate(chosenDate);
    }
  }
}
