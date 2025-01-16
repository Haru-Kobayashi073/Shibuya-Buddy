import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/place.dart';
import '../../domain/entities/plan.dart';
import '../../domain/entities/plan_prompt.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/plan_repository.dart';
import '../../utils/providers/current_user/current_user.dart';
import '../firebase/cloud_firestore_provider.dart';

part 'plan_data_source.g.dart';

@riverpod
class PlanDataSource extends _$PlanDataSource implements PlanRepository {
  FirebaseFirestore get firestore => ref.read(cloudFirestoreProvider);
  User get currentUser => ref.watch(currentUserProvider);

  @override
  void build() {
    return;
  }

  @override
  Future<void> createPlan({
    required Plan plan,
    required List<Place> places,
    required PlanPrompt planPrompt,
  }) async {
    final planRef = firestore.collection('plans').doc(plan.id);
    await planRef.set(plan.toJson()).then(
      (_) async {
        for (final place in places) {
          await planRef.collection('places').doc(place.id).set(place.toJson());
        }
        await planRef
            .collection('planPrompts')
            .doc(planPrompt.id)
            .set(planPrompt.toJson());
      },
    );
    for (final topic in plan.topics) {
      final updatedTopic = topic.copyWith(
        totalCount: topic.totalCount + 1,
      );
      await firestore
          .collection('topics')
          .doc(topic.id)
          .set(updatedTopic.toJson());
    }
    return;
  }

  @override
  Future<List<Plan>> getPlansMadeByPersonal() async {
    final snapshot = await firestore
        .collection('plans')
        .where('author_id', isEqualTo: currentUser.uid)
        .get();
    return snapshot.docs.map((doc) => Plan.fromJson(doc.data())).toList();
  }

  @override
  Future<List<Plan>> getRecentPlansMadeByPersonal() async {
    final snapshot = await firestore
        .collection('plans')
        .where('author_id', isEqualTo: currentUser.uid)
        .orderBy('created_at', descending: true)
        .limit(5)
        .get();
    return snapshot.docs.map((doc) => Plan.fromJson(doc.data())).toList();
  }

  @override
  Future<List<Plan>> getPopularPlans() async {
    final snapshot = await firestore
        .collection('popular_plans')
        .orderBy('ranking')
        .limit(10)
        .get();
    return snapshot.docs.map((doc) => Plan.fromJson(doc.data())).toList();
  }

  @override
  Future<void> bookmarkPlan({required Plan plan}) async {
    await firestore.collection('plans').doc(plan.id).set(plan.toJson());
    await firestore.collection('users').doc(currentUser.uid).update({
      'bookmarkedPlanIds': FieldValue.arrayUnion([plan.id]),
    });
  }

  @override
  Future<List<String>> getBookmarkedPlanIds() async {
    final snapshot =
        await firestore.collection('users').doc(currentUser.uid).get();
    final bookmarkedPlanIds = snapshot.data()!['bookmarkedPlanIds'];
    if (bookmarkedPlanIds is! List<dynamic>) {
      return [];
    }
    return List<String>.from(bookmarkedPlanIds);
  }

  @override
  Future<Plan> getPlanData({required String planId}) async {
    final snapshot = await firestore.collection('plans').doc(planId).get();
    return Plan.fromJson(snapshot.data()!);
  }

  @override
  Future<void> unbookmarkPlan({required Plan plan}) async {
    await firestore.collection('plans').doc(plan.id).set(plan.toJson());
    await firestore.collection('users').doc(currentUser.uid).update({
      'bookmarkedPlanIds': FieldValue.arrayRemove([plan.id]),
    });
  }
}
