import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../i18n/strings.g.dart';
import 'components/custom_cupertino_date_picker.dart';
import 'create_plan_state.dart';

part 'create_plan_notifier.g.dart';

@riverpod
class CreatePlanNotifier extends _$CreatePlanNotifier {
  CreatePlanNotifier() {
    locationController =
        TextEditingController(text: t.createPlanPage.hintText.location);
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

  void updateDate(
    DateTime newDate,
    TextEditingController targetController,
  ) {
    final currentLocale = LocaleSettings.currentLocale.languageCode;

    final pattern = {
          'ja': 'M/d(E) hh:mm a',
          'en': 'MMM d, E hh:mm a',
          'zh-Hant': 'M月d日 EEEE hh:mm a',
          'zh-Hans': 'M月d日 EEEE hh:mm a',
        }[currentLocale] ??
        'MMM d, EEEE HH:mm';

    final formatter = DateFormat(
      pattern,
      LocaleSettings.currentLocale.languageCode,
    );

    targetController.text = formatter.format(newDate);
  }

  void updateSingleSelection(SelectionField field, String item) {
    switch (field) {
      case SelectionField.transport:
        state = state.copyWith(selectedTransport: [item]);
        _updateController(transportController, state.selectedTransport);
      case SelectionField.numberOfPeople:
        state = state.copyWith(selectedNumberofPeople: [item]);
        _updateController(
          numberOfPeopleController,
          state.selectedNumberofPeople,
        );
      case SelectionField.category:
        state = state.copyWith(selectedCategory: [item]);
        _updateController(categoryController, state.selectedCategory);
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
        _updateController(transportController, state.selectedTransport);
      case SelectionField.numberOfPeople:
        _toggleListField(
          selectedItems: state.selectedNumberofPeople,
          item: item,
          updateField: (updatedList) =>
              state = state.copyWith(selectedNumberofPeople: updatedList),
        );
        _updateController(
          numberOfPeopleController,
          state.selectedNumberofPeople,
        );
      case SelectionField.category:
        _toggleListField(
          selectedItems: state.selectedCategory,
          item: item,
          updateField: (updatedList) =>
              state = state.copyWith(selectedCategory: updatedList),
        );
        _updateController(categoryController, state.selectedCategory);
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

  void _updateController(TextEditingController controller, List<String> items) {
    controller.text = items.join(', ');
  }

  Future<void> showCupertinoDatePicker(
    BuildContext context,
    TextEditingController targetController,
  ) async {
    await showCupertinoModalPopup<void>(
      context: context,
      builder: (context) {
        return CustomCupertinoDatePicker(
          onDateTimeChanged: (date) {
            updateDate(date, targetController);
          },
          targetController: targetController,
        );
      },
    );
  }
}
