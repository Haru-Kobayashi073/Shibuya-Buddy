import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/plan.dart';
import '../../domain/entities/user.dart';
import '../../infrastructure/plan/plan_data_source.dart';
import '../../utils/providers/current_user/current_user.dart';
import 'home_page_state.dart';

part 'home_page_notifier.g.dart';

@riverpod
class HomePageNotifier extends _$HomePageNotifier {
  PlanDataSource get planDataSource =>
      ref.read(planDataSourceProvider.notifier);
  User get currentUser => ref.watch(currentUserProvider);

  @override
  Future<HomePageState> build() async {
    await ref.read(currentUserProvider.notifier).fetchUser();
    final recentPlans = await getRecentPlans();

    return HomePageState(
      popularPlans: [],
      popularTopics: [],
      recentPlans: recentPlans,
    );
  }

  Future<List<Plan>> getRecentPlans() async {
    var recentPlans = <Plan>[];
    try {
      final res = await planDataSource.getRecentPlansMadeByPersonal(
        userId: currentUser.uid,
      );
      recentPlans = res;
    } on Exception catch (e) {
      debugPrint(e.toString());
    }

    return recentPlans;
  }
}
