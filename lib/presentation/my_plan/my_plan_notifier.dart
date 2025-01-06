import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/plan.dart';
import '../../domain/entities/topic.dart';
import '../../infrastructure/firebase/cloud_firestore_provider.dart';
import '../../infrastructure/firebase/firebase_auth_provider.dart';
import '../../utils/providers/scaffold_messenger/scaffold_messenger.dart'
    as custom;
import '../../utils/providers/scaffold_messenger/scaffold_messenger.dart';
import 'my_plan_state.dart';

part 'my_plan_notifier.g.dart';

@riverpod
class MyPlanNotifier extends _$MyPlanNotifier {
  FirebaseFirestore get firestore => ref.read(cloudFirestoreProvider);
  FirebaseAuth get fireauth => ref.read(firebaseAuthProvider);

  custom.ScaffoldMessenger get scaffoldMessenger =>
      ref.read(scaffoldMessengerProvider.notifier);

  @override
  Future<MyPlanState> build() async {
    final uid = fireauth.currentUser?.uid;
    final plans = await _buildBookmarkPlans(userId: uid.toString());
    return MyPlanState(bookmarkPlanList: plans);
  }

  Future<List<String>> _getBookmarkedPlanIds({
    required String userId,
  }) async {
    try {
      final snapshot = await firestore.collection('users').doc(userId).get();

      if (!snapshot.exists ||
          !snapshot.data()!.containsKey('bookmarkedPlanIds')) {
        return [];
      }
      final bookmarkedPlanIds = snapshot.data()!['bookmarkedPlanIds'];
      if (bookmarkedPlanIds == null || bookmarkedPlanIds is! List<dynamic>) {
        return [];
      }

      return List<String>.from(bookmarkedPlanIds);
    } on FirebaseException catch (e) {
      scaffoldMessenger.showExceptionSnackBar('プランIDの取得に失敗しました: $e');
      return [];
    }
  }

  Future<List<Plan>> _buildBookmarkPlans({required String userId}) async {
    try {
      final planIds = await _getBookmarkedPlanIds(userId: userId);
      if (planIds.isEmpty) {
        return [];
      }

      final plans = <Plan>[];
      final planSnapshots = await Future.wait(
        planIds.map((id) async {
          return firestore.collection('PopularPlans').doc(id).get();
        }),
      );
      var count = 0;
      for (final snapshot in planSnapshots) {
        if (!snapshot.exists) {
          continue;
        }

        final data = snapshot.data();
        if (data == null) {
          continue;
        }
        final topicList = <Topic>[];
        for (final topic in data['topics'] as List<dynamic>) {
          topicList.add(Topic(name: topic.toString(), thumbnailUrl: ''));
        }

        plans.add(
          Plan(
            id: planIds[count],
            title: data['title'].toString(),
            description: data['description'].toString(),
            thumbnailUrl: data['thumbnailUrl'].toString(),
            topics: topicList,
          ),
        );
        count++;
      }

      return plans;
    } on FirebaseException catch (e) {
      scaffoldMessenger.showExceptionSnackBar('プランの取得中にエラーが発生しました: $e');
      debugPrint(e.toString());
      return [];
    }
  }

  Future<void> unBookmark(String planId) async {
    final uid = fireauth.currentUser?.uid;
    final planIds = await _getBookmarkedPlanIds(userId: uid.toString());
    debugPrint(planIds.toString());
    planIds.removeAt(planIds.indexOf(planId));
    debugPrint(planIds.toString());

    await firestore.collection('users').doc(uid).update(
      {'bookmarkedPlanIds': planIds},
    );
    final plans = await _buildBookmarkPlans(userId: uid.toString());
    state = AsyncValue.data(MyPlanState(bookmarkPlanList: plans));
  }

  Future<void> addPlans() async {
    final uid = fireauth.currentUser?.uid;
    final plans = await _buildBookmarkPlans(userId: uid.toString());
    final planMap = {
      'title': '宮下パークでショッピング${plans.length}',
      'description': '説明説明',
      'thumbnailUrl': 'https://placehold.jp/80x50.png',
      'topics': [
        '所要時間: 1時間〜',
        '人数: １人〜',
        '＃ショッピング',
        'アクティビティ',
      ],
    };

    final docRef = await firestore.collection('PopularPlans').add(planMap);
    final newPlanId = docRef.id;
    final userDocRef = firestore.collection('users').doc(uid);
    await userDocRef.update({
      'bookmarkedPlanIds': FieldValue.arrayUnion([newPlanId]),
    });
    
    state = AsyncValue.data(MyPlanState(bookmarkPlanList: plans));
  }
}
