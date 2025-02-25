import '../entities/plan_review.dart';

abstract interface class PlanReviewRepository {
  Future<void> createPlanReview({required PlanReview planReview});

  Future<List<PlanReview>> getPlanReviews({
    required String planId,
  });
}
