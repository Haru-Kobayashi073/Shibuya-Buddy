import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'create_plan_state.dart';

part 'create_plan_notifier.g.dart';

@riverpod
class CreatePlanNotifier extends _$CreatePlanNotifier {
  late final TextEditingController locationController;
  late final TextEditingController dateController;
  late final TextEditingController numberOfPeopleController;
  late final TextEditingController transportController;
  late final TextEditingController categoryController;
  late final TextEditingController topicsController;

  @override
  CreatePlanState build() {
    locationController = TextEditingController();
    dateController = TextEditingController();
    numberOfPeopleController = TextEditingController();
    transportController = TextEditingController();
    categoryController = TextEditingController();
    topicsController = TextEditingController();
    return const CreatePlanState();
  }

  void clearTopics() {
    state = state.copyWith(selectedTopics: []);
  }

  void updateSelectedTopics(List<String> topics) {
    state = state.copyWith(selectedTopics: topics)
      ..selectedTopics.join(', ');
  }

  void updateTopicsController() {
  topicsController.text = state.selectedTopics.join(', ');
}
}
