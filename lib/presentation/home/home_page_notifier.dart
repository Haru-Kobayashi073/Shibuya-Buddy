import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/plan.dart';
import '../../domain/entities/topic.dart';
import '../../infrastructure/plan/plan_data_source.dart';
import '../../infrastructure/topic/topic_data_source.dart';
import '../../utils/providers/current_user/current_user.dart';
import 'home_page_state.dart';

part 'home_page_notifier.g.dart';

@riverpod
class HomePageNotifier extends _$HomePageNotifier {
  PlanDataSource get planDataSource =>
      ref.read(planDataSourceProvider.notifier);
  TopicDataSource get topicDataSource =>
      ref.read(topicDataSourceProvider.notifier);

  @override
  Future<HomePageState> build() async {
    await ref.read(currentUserProvider.notifier).fetchUser();
    final recentPlans = await getRecentPlans();
    final popularTopics = await getPopularTopics();

    return HomePageState(
      popularPlans: [],
      popularTopics: popularTopics,
      recentPlans: recentPlans,
    );
  }

  Future<List<Plan>> getRecentPlans() async {
    try {
      return await planDataSource.getRecentPlansMadeByPersonal();
    } on Exception catch (e) {
      debugPrint(e.toString());
      return <Plan>[];
    }
  }

  Future<List<Topic>> getPopularTopics() async {
    try {
      return await topicDataSource.getPopularTopics();
    } on Exception catch (e) {
      debugPrint(e.toString());
      return <Topic>[];
    }
  }
}
