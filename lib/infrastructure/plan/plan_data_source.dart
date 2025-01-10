import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/place.dart';
import '../../domain/entities/plan.dart';
import '../../domain/entities/plan_prompt.dart';
import '../../domain/entities/topic.dart';
import '../../domain/repositories/plan_repository.dart';
import '../firebase/cloud_firestore_provider.dart';
import '../firebase/firebase_auth_provider.dart';
import '../topic/topic_data_source.dart';

part 'plan_data_source.g.dart';

@riverpod
class PlanDataSource extends _$PlanDataSource implements PlanRepository {
  FirebaseFirestore get firestore => ref.read(cloudFirestoreProvider);
  FirebaseAuth get fireauth => ref.read(firebaseAuthProvider);
  TopicDataSource get topicsorce => ref.read(topicDataSourceProvider.notifier);
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
      await firestore.collection('topics').doc(topic.id).set(topic.toJson());
    }
    return;
  }

  Future<List<String>> getBookmarkedPlanIds() async {
    final userData = fireauth.currentUser;
    if (userData == null) {
      return [];
    }
    final snapshot =
        await firestore.collection('users').doc(userData.uid).get();
    if (!snapshot.exists ||
        !snapshot.data()!.containsKey('bookmarkedPlanIds')) {
      return [];
    }
    final bookmarkedPlanIds = snapshot.data()!['bookmarkedPlanIds'];
    if (bookmarkedPlanIds == null || bookmarkedPlanIds is! List<dynamic>) {
      return [];
    }
    return List<String>.from(bookmarkedPlanIds);
  }

  Future<Plan> getPlanData({required String planId}) async {
    final topics = <Topic>[];
    final snapshot =
        await firestore.collection('PopularPlans').doc(planId).get();
    final data = snapshot.data();
    if (data == null) {
      return const Plan(
        title: '',
        description: '',
        thumbnailUrl: '',
        topics: [],
      );
    }
    for (final topicId in data['topics'] as List) {
      final topic = await topicsorce.getTopicData(topicId: topicId.toString());
      topics.add(Topic(name: topic.name, thumbnailUrl: ''));
    }
    final res = Plan.fromJson(data);
    return res.copyWith(
      topics: topics,
    );
  }

  Future<void> deleteBookmarkData({
    required String planId,
  }) async {
    final userData = fireauth.currentUser;
    final planIds = await getBookmarkedPlanIds();
    planIds.removeAt(planIds.indexOf(planId));
    await firestore.collection('users').doc(userData!.uid).update(
      {'bookmarkedPlanIds': planIds},
    );
  }
}
