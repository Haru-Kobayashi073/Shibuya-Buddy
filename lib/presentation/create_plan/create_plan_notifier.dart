import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../i18n/strings.g.dart';
import '../../utils/styles/app_color.dart';
import '../../utils/styles/app_text_style.dart';
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

  void updateDate(DateTime newDate, TextEditingController targetController) {
    selectedDate = newDate;
    final formatter = DateFormat('M/d(E)', 'ja');
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
        return ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            color: AppColor.white,
            height: 350,
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        t.createPlanPage.modal.title,
                        style: AppTextStyle.textStyle.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppColor.black,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(Symbols.close),
                      ),
                    ],
                  ),
                ),
                const Divider(),
                Expanded(
                  child: CupertinoDatePicker(
                    initialDateTime: DateTime.now(),
                    mode: CupertinoDatePickerMode.date,
                    onDateTimeChanged: (date) {
                      updateDate(date, targetController);
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
