import '../entities/place.dart';
import '../entities/plan.dart';
import '../entities/plan_prompt.dart';

// ignore: one_member_abstracts After creating the PlanRepository, we need to implement it in the data layer.
abstract interface class PlanRepository {
  Future<void> createPlan({
    required Plan plan,
    required List<Place> places,
    required PlanPrompt planPrompt,
  });
}
