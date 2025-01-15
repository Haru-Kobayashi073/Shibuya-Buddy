import '../entities/place.dart';
import '../entities/plan.dart';
import '../entities/plan_prompt.dart';

abstract interface class PlanRepository {
  Future<void> createPlan({
    required Plan plan,
    required List<Place> places,
    required PlanPrompt planPrompt,
  });

  Future<List<Plan>> getPlansMadeByPersonal();
  Future<List<Plan>> getRecentPlansMadeByPersonal();

  Future<List<Plan>> getPopularPlans();
  Future<void> bookmarkPlan({required Plan plan});
  Future<List<String>> getBookmarkedPlanIds();
  Future<Plan> getPlanData({required String planId});
  Future<void> unbookmarkPlan({required Plan plan});
}
