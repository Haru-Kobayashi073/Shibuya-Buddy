import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

import '../../domain/entities/plan_prompt.dart';
import '../../domain/entities/topic.dart';
import '../../i18n/strings.g.dart';
import '../../infrastructure/topic/topic_data_source.dart';
import '../../utils/custom_logger.dart';
import '../../utils/providers/scaffold_messenger/scaffold_messenger.dart';
import 'components/custom_cupertino_date_picker.dart';
import 'create_plan_state.dart';

part 'create_plan_notifier.g.dart';

@riverpod
class CreatePlanNotifier extends _$CreatePlanNotifier {
  TopicDataSource get topicDataSource =>
      ref.read(topicDataSourceProvider.notifier);
  ScaffoldMessenger get scaffoldMessenger =>
      ref.read(scaffoldMessengerProvider.notifier);

  @override
  Future<CreatePlanState> build() async {
    final topics = await getTopics();
    return CreatePlanState(topics: topics);
  }

  Future<List<Topic>> getTopics() async {
    try {
      return await topicDataSource.getTopics();
    } on Exception catch (e) {
      logger.e('getTopics: $e');
      return [];
    }
  }

  void updateSelectedTopics(Topic topic, {required bool isSelected}) {
    final updatedTopics = List<Topic>.from(state.requireValue.selectedTopics);
    if (isSelected) {
      if (!updatedTopics.contains(topic)) {
        updatedTopics.add(topic);
      }
    } else {
      updatedTopics.remove(topic);
    }
    state = AsyncValue.data(
      state.requireValue.copyWith(selectedTopics: updatedTopics),
    );
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
    return DateFormat(pattern, currentLocale).format(date);
  }

  void updateTransport(String selectedTransport) {
    final updatedList = _toggleListField(
      selectedItems: state.requireValue.transports,
      item: selectedTransport,
    );
    state = AsyncValue.data(
      state.requireValue.copyWith(transports: updatedList),
    );
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
      builder: (context) => CustomCupertinoDatePicker(
        onDateTimeChanged: (date) {
          chosenDate = date;
          targetController.text = _formatDate(date);
        },
      ),
    );
    if (isStartDate) {
      state = AsyncValue.data(
        state.requireValue.copyWith(startDate: _formatDate(chosenDate)),
      );
    } else {
      state = AsyncValue.data(
        state.requireValue.copyWith(endDate: _formatDate(chosenDate)),
      );
    }
  }

  Future<void> submitPlanPrompt({
    required Future<void> Function(PlanPrompt) onNavigate,
  }) async {
    if (!state.requireValue.isSelectedAll()) {
      scaffoldMessenger.showExceptionSnackBar(
        t.createPlanPage.snackBar.error.foundUnSelectedField,
      );
      return;
    }
    final startDate = _parseDate(state.requireValue.startDate!);
    final endDate = _parseDate(state.requireValue.endDate!);
    if (startDate.isAfter(endDate)) {
      scaffoldMessenger.showExceptionSnackBar(
        t.createPlanPage.snackBar.error.invalidDateRange,
      );
      return;
    }
    final planPrompt = PlanPrompt(
      id: const Uuid().v4(),
      schedules: (
        firstDate: state.requireValue.startDate!,
        lastDate: state.requireValue.endDate!
      ),
      childCount: state.requireValue.childCountString,
      adultCount: state.requireValue.adultCountString,
      transports: state.requireValue.transports,
      topics: state.requireValue.selectedTopics,
      createdAt: DateTime.now(),
    );
    await onNavigate(planPrompt);
  }

  DateTime _parseDate(String dateString) {
    final currentLocale = LocaleSettings.currentLocale.languageCode;
    final pattern = {
          'ja': 'M/d(E) hh:mm a',
          'en': 'MMM d, E hh:mm a',
          'zh-Hant': 'M月d日 EEEE hh:mm a',
          'zh-Hans': 'M月d日 EEEE hh:mm a',
        }[currentLocale] ??
        'MMM d, EEEE HH:mm';
    return DateFormat(pattern, currentLocale).parse(dateString);
  }

  // 大人の人数操作
  void incrementAdult() {
    final newAdultCount = state.requireValue.adultCount + 1;
    state = AsyncValue.data(
      state.requireValue.copyWith(adultCount: newAdultCount),
    );
  }

  void decrementAdult() {
    if (state.requireValue.adultCount > 0) {
      final newAdultCount = state.requireValue.adultCount - 1;
      state = AsyncValue.data(
        state.requireValue.copyWith(adultCount: newAdultCount),
      );
    }
  }

  // 子供の人数操作
  void incrementChild() {
    final newChildCount = state.requireValue.childCount + 1;
    state = AsyncValue.data(
      state.requireValue.copyWith(childCount: newChildCount),
    );
  }

  void decrementChild() {
    if (state.requireValue.childCount > 0) {
      final newChildCount = state.requireValue.childCount - 1;
      state = AsyncValue.data(
        state.requireValue.copyWith(childCount: newChildCount),
      );
    }
  }
}
