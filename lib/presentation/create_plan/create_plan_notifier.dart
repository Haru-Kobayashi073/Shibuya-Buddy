import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

import '../../domain/entities/plan_prompt.dart';
import '../../i18n/strings.g.dart';
import '../../utils/providers/scaffold_messenger/scaffold_messenger.dart';
import 'components/custom_cupertino_date_picker.dart';
import 'create_plan_state.dart';

part 'create_plan_notifier.g.dart';

@riverpod
class CreatePlanNotifier extends _$CreatePlanNotifier {
  ScaffoldMessenger get scaffoldMessenger =>
      ref.read(scaffoldMessengerProvider.notifier);

  @override
  CreatePlanState build() {
    return const CreatePlanState();
  }

  void clearTopics() {
    state = state.copyWith(topics: []);
  }

  void updateSelectedTopics(String topic, {required bool isSelected}) {
    final updatedTopics = List<String>.from(state.topics);
    if (isSelected) {
      if (!updatedTopics.contains(topic)) {
        updatedTopics.add(topic);
      }
    } else {
      updatedTopics.remove(topic);
    }
    state = state.copyWith(topics: updatedTopics);
  }

  String _formatDate(DateTime date) {
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

  void updateNumberOfPeople(String selecteNum) {
    state = state.copyWith(numberOfPeople: selecteNum);
  }

  void updateTransport(String selectedTransport) {
    final updatedList = _toggleListField(
      selectedItems: state.transports,
      item: selectedTransport,
    );
    state = state.copyWith(transports: updatedList);
  }

  void updateCategory(String selectedCategory) {
    final updatedList = _toggleListField(
      selectedItems: state.categories,
      item: selectedCategory,
    );
    state = state.copyWith(categories: updatedList);
  }

  List<String> _toggleListField({
    required List<String> selectedItems,
    required String item,
  }) {
    return selectedItems.contains(item)
        ? selectedItems.where((i) => i != item).toList()
        : [...selectedItems, item];
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
          onDateTimeChanged: (date) {
            chosenDate = date;
            targetController.text = _formatDate(date);
          },
        );
      },
    );

    if (isStartDate) {
      state = state.copyWith(startDate: _formatDate(chosenDate));
    } else {
      state = state.copyWith(endDate: _formatDate(chosenDate));
    }
  }

  Future<void> submitPlanPrompt({
    required Future<void> Function(PlanPrompt) onNavigate,
  }) async {
    if (!state.isSelectedAll()) {
      scaffoldMessenger.showExceptionSnackBar('選択されていない項目があります 全ての項目を選択してください');
      return;
    }
    final planPrompt = PlanPrompt(
      id: const Uuid().v4(),
      schedules: (
        firstDate: state.startDate!,
        lastDate: state.endDate!,
      ),
      numberOfPeople: state.numberOfPeople,
      transports: state.transports,
      categories: state.categories,
      topics: state.topics,
      createdAt: DateTime.now(),
    );
    await onNavigate(planPrompt);
  }
}
