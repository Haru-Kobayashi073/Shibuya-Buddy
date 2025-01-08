import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../i18n/strings.g.dart';
import '../../utils/providers/scaffold_messenger/scaffold_messenger.dart';
import '../firebase/cloud_firestore_provider.dart';

part 'bookmark_data_sorce.g.dart';

@riverpod
class BookmarkDataSorce extends _$BookmarkDataSorce {
  FirebaseFirestore get firestore => ref.read(cloudFirestoreProvider);
  ScaffoldMessenger get scaffoldMessenger =>
      ref.read(scaffoldMessengerProvider.notifier);
  BookmarkDataSorce get booksorce =>
      ref.read(bookmarkDataSorceProvider.notifier);
  @override
  void build() {
    return;
  }

  Future<List<String>> getBookmarkedPlanIds({
    required String userId,
  }) async {
    final i18n = t.myPlanPage;
    final snack = i18n.error.failedGetId;
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
      scaffoldMessenger.showExceptionSnackBar('$snack:$e');
      return [];
    }
  }

  Future<Map<String, dynamic>> getPlanData({required String planId}) async {
    final i18n = t.myPlanPage;
    final snack = i18n.error.failedGetPlanData;
    try {
      final snapshot =
          await firestore.collection('PopularPlans').doc(planId).get();
      final data = snapshot.data();
      if (data == null) {
        return {};
      }
      return data;
    } on FirebaseException catch (e) {
      scaffoldMessenger.showExceptionSnackBar('$snack:$e');
      return {};
    }
  }

  Future<void> deleteBookmarkData({
    required String planId,
    required String userId,
  }) async {
    final i18n = t.myPlanPage;
    final snack = i18n.error.failedUnBookmark;
    try {
      final planIds = await getBookmarkedPlanIds(userId: userId);
      planIds.removeAt(planIds.indexOf(planId));
      await firestore.collection('users').doc(userId).update(
        {'bookmarkedPlanIds': planIds},
      );
    } on FirebaseException catch (e) {
      scaffoldMessenger.showExceptionSnackBar('$snack:$e');
    }
  }
}
