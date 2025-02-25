import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/plan_review.dart';
import '../../domain/repositories/plan_review_repository.dart';
import '../firebase/cloud_firestore_provider.dart';

part 'plan_review_data_source.g.dart';

@riverpod
class PlanReviewDataSource extends _$PlanReviewDataSource
    implements PlanReviewRepository {
  FirebaseFirestore get firestore => ref.read(cloudFirestoreProvider);

  @override
  void build() {
    return;
  }

  @override
  Future<void> createPlanReview({
    required PlanReview planReview,
  }) async {
    await firestore
        .collection('plans')
        .doc(planReview.planId)
        .collection('reviews')
        .add(
          planReview.toJson(),
        );
  }

  @override
  Future<List<PlanReview>> getPlanReviews({
    required String planId,
  }) async {
    final snapshot = await firestore
        .collection('plans')
        .doc(planId)
        .collection('reviews')
        .get();
    return snapshot.docs
        .map(
          (doc) => PlanReview.fromJson(doc.data()),
        )
        .toList();
  }
}
