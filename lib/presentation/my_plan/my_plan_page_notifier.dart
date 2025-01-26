import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/plan.dart';
import '../../i18n/strings.g.dart';
import '../../infrastructure/plan/plan_data_source.dart';
import '../../utils/providers/scaffold_messenger/scaffold_messenger.dart'
    as custom;
import '../../utils/providers/scaffold_messenger/scaffold_messenger.dart';
import 'my_plan_page_state.dart';

part 'my_plan_page_notifier.g.dart';

@riverpod
class MyPlanPageNotifier extends _$MyPlanPageNotifier {
  custom.ScaffoldMessenger get scaffoldMessenger =>
      ref.read(scaffoldMessengerProvider.notifier);
  PlanDataSource get planDataSource =>
      ref.read(planDataSourceProvider.notifier);

  @override
  Future<MyPlanPageState> build() async {
    final bookmarkPlans = await getBookmarkPlans();
    final createdPlans = await getCreatedPlans();

    return MyPlanPageState(
      bookmarkPlanList: bookmarkPlans,
      createPlanList: createdPlans,
    );
  }

  Future<List<Plan>> getBookmarkPlans() async {
    final i18n = t.myPlanPage;
    final snacki18n = i18n.error;
    final plans = <Plan>[];
    final planIds = await planDataSource.getBookmarkedPlanIds();
    try {
      for (final id in planIds) {
        plans.add(await planDataSource.getPlanData(planId: id));
      }
      return plans;
    } on FirebaseException catch (_) {
      scaffoldMessenger.showExceptionSnackBar(snacki18n.failedGetPlanData);
      return [];
    } on Exception catch (_) {
      scaffoldMessenger.showExceptionSnackBar(snacki18n.displayError);
      return [];
    }
  }

  Future<List<Plan>> getCreatedPlans() async {
    try {
      final plans = await planDataSource.getPlansMadeByPersonal();
      return plans;
    } on Exception catch (_) {
      scaffoldMessenger.showExceptionSnackBar(t.myPlanPage.error.displayError);
      return [];
    }
  }

  Future<void> unBookmark({required Plan plan}) async {
    try {
      final updatedPlan = plan.copyWith(
        isBookmarked: false,
        bookmarkCount: plan.bookmarkCount - 1,
      );
      await planDataSource.unbookmarkPlan(plan: updatedPlan);
      state = AsyncValue.data(
        state.requireValue.copyWith(
          bookmarkPlanList: state.requireValue.bookmarkPlanList
              .where((element) => element.id != plan.id)
              .toList(),
        ),
      );
    } on FirebaseException catch (_) {
      scaffoldMessenger
          .showExceptionSnackBar(t.myPlanPage.error.failedUnBookmark);
    }
  }
}

final selectedIndexProvider = StateProvider<int>((ref) => 0);
