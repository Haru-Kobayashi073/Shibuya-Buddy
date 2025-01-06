import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/plan.dart';
import '../../infrastructure/firebase/firebase_auth_provider.dart';
import '../../infrastructure/plan/plan_data_source.dart';
import 'home_page_state.dart';

part 'home_page_notifier.g.dart';

@riverpod
class HomePageNotifier extends _$HomePageNotifier {
  PlanDataSource get planDataSource =>
      ref.read(planDataSourceProvider.notifier);
  User get currentUser => ref.read(firebaseAuthProvider).currentUser!;

  @override
  Future<HomePageState> build() async {
    final recentPlans = await getRecentPlans();
    final s = HomePageState(
      popularPlans: [],
      popularTopics: [],
      recentPlans: recentPlans,
    );
    return s;
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
