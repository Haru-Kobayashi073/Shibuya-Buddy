import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/plan.dart';
import '../../infrastructure/firebase/cloud_firestore_provider.dart';

part 'my_plan_notifier.g.dart';

@riverpod
class MyPlanNotifier extends _$MyPlanNotifier {
  FirebaseFirestore get firestore => ref.read(cloudFirestoreProvider);
  @override
  void build() {
    return;
  }

  Future<List<String>> getBookmarkedPlanIds({
    required String userId,
  }) async {
    try {
      final snapshot = await firestore.collection('users').doc(userId).get();

      if (!snapshot.exists ||
          !snapshot.data()!.containsKey('bookmarkedPlanIds')) {
        return [];
      }

      final bookmarkedPlanIds = snapshot.data()!['bookmarkedPlanIds'];
      if (bookmarkedPlanIds == null) {
        return [];
      }

      return List<String>.from(bookmarkedPlanIds as Iterable<dynamic>);
    } catch (e) {
      debugPrint('ブックマークプランの取得エラー: $e');
      return [];
    }
  }

  Future<List<Plan>> buildBookmarkPlans({required String userId}) async {
    try {
      final planIds = await getBookmarkedPlanIds(userId: userId);
      if (planIds.isEmpty) {
        return [];
      }

      final plans = <Plan>[];
      final planSnapshots = await Future.wait(
        planIds.map((id) => firestore.collection('plans').doc(id).get()),
      );

      for (final snapshot in planSnapshots) {
        if (!snapshot.exists) {
          continue;
        }

        final data = snapshot.data()!;
        plans.add(
          Plan(
            title: data['title'].toString(),
            description: data['description'].toString(),
            thumbnailUrl: data['thumbnailUrl'].toString(),
            topics: [],
          ),
        );
      }

      return plans;
    } catch (e) {
      debugPrint('ブックマークプランの構築エラー: $e');
      return [];
    }
  }

  Future<void> addPlanToBookmarks({
    required String userId,
    required String planId,
  }) async {
    await firestore.collection('users').doc(userId).update({
      'bookmarkedPlanIds': FieldValue.arrayUnion([planId]),
    });
    debugPrint('Add!');
  }
}
