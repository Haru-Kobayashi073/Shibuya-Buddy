import 'package:cloud_firestore/cloud_firestore.dart';
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
  PlanDataSource get plan => ref.read(planDataSourceProvider.notifier);

  @override
  Future<MyPlanPageState> build() async {
    final bookmarkPlans = await buildBookmarkPlans();
    return MyPlanPageState(
      bookmarkPlanList: bookmarkPlans,
      createPlanList: [],
    );
  }

  Future<List<Plan>> buildBookmarkPlans() async {
    final i18n = t.myPlanPage;
    final snacki18n = i18n.error;
    final plans = <Plan>[];
    final planIds = await plan.getBookmarkedPlanIds();
    try {
      for (final id in planIds) {
        plans.add(await plan.getPlanData(planId: id));
      }
      state = AsyncValue.data(MyPlanPageState(bookmarkPlanList: plans));
      return plans;
    } on FirebaseException catch (e) {
      scaffoldMessenger
          .showExceptionSnackBar('${snacki18n.failedGetPlanData}:$e');
      state = const AsyncValue.data(MyPlanPageState());
      return [];
    } on Exception catch (e) {
      scaffoldMessenger.showExceptionSnackBar('${snacki18n.displayError}:$e');
      state = const AsyncValue.data(MyPlanPageState());
      return [];
    }
  }

  Future<void> unBookmark({
    required String planId,
  }) async {
    final i18n = t.myPlanPage;
    final snack = i18n.error.failedUnBookmark;
    try {
      await plan.deleteBookmarkData(
        planId: planId,
      );
      await buildBookmarkPlans();
    } on FirebaseException catch (e) {
      scaffoldMessenger.showExceptionSnackBar('$snack:$e');
    }
  }
}
