import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/plan.dart';
import '../../domain/entities/topic.dart';
import '../../infrastructure/plan/plan_data_source.dart';
import '../../infrastructure/topic/topic_data_source.dart';
import '../../utils/providers/current_user/current_user.dart';
import '../../utils/providers/in_app_purchase/in_app_purchase_service.dart';
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
    await ref.read(inAppPurchaseServiceProvider.notifier).build();
    final popularPlans = await getPopularPlans();
    final popularTopics = await getPopularTopics();
    final recentPlans = await getRecentPlans();

    return HomePageState(
      popularPlans: popularPlans,
      popularTopics: popularTopics,
      recentPlans: recentPlans,
    );
  }

  Future<List<Plan>> getPopularPlans() async {
    try {
      return await planDataSource.getPopularPlans();
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

  Future<List<Plan>> getRecentPlans() async {
    try {
      return await planDataSource.getRecentPlansMadeByPersonal();
    } on Exception catch (e) {
      debugPrint(e.toString());
      return <Plan>[];
    }
  }
}
