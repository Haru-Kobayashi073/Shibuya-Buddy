import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/place.dart';
import '../../domain/entities/plan.dart';
import '../../domain/entities/plan_review.dart';

part 'plan_detail_page_state.freezed.dart';

@freezed
abstract class PlanDetailPageState with _$PlanDetailPageState {
  const factory PlanDetailPageState({
    required Plan plan,
    required List<Place> places,
    required bool isBookmarked,
    required bool haveUsedPlan,
    @Default([]) List<PlanReview> reviewsWithContent,
    @Default(0) int comprehensiveRating,
    @Default(0) int reviewCount,
    PlanReview? currentUserReview,
  }) = _PlanDetailPageState;
}
