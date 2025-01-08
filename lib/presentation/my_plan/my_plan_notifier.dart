import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/plan.dart';
import '../../domain/entities/topic.dart';
import '../../i18n/strings.g.dart';
import '../../infrastructure/bookmark/bookmark_data_sorce.dart';
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
  BookmarkDataSorce get booksorce =>
      ref.read(bookmarkDataSorceProvider.notifier);

  @override
  Future<MyPlanState> build() async {
    final userData = fireauth.currentUser;
    if (userData == null) {
      return const MyPlanState();
    }
    final ids = await booksorce.getBookmarkedPlanIds(userId: userData.uid);
    final plans = await buildBookmarkPlans(planIds: ids);
    return MyPlanState(bookmarkPlanList: plans, createPlanList: []);
  }

  Future<List<Plan>> buildBookmarkPlans({required List<String> planIds}) async {
    final i18n = t.myPlanPage;
    final snack = i18n.error.displayError;
    final plans = <Plan>[];
    final topics = <Topic>[];
    var count = 0;
    try {
      for (final id in planIds) {
        final data = await booksorce.getPlanData(planId: id);
        for (final topic in data['topics'] as List<dynamic>) {
          topics.add(Topic(name: topic.toString(), thumbnailUrl: ''));
        }
        plans.add(
          Plan(
            id: planIds[count],
            title: data['title'].toString(),
            description: data['description'].toString(),
            thumbnailUrl: data['thumbnailUrl'].toString(),
            topics: topics,
          ),
        );
        count++;
      }
      return plans;
    } on Exception catch (e) {
      scaffoldMessenger.showExceptionSnackBar('$snack:$e');
      return [];
    }
  }

  Future<void> refreshBookmarkData() async {
    final userId = fireauth.currentUser?.uid;
    final ids = await booksorce.getBookmarkedPlanIds(userId: userId.toString());
    final plans = await buildBookmarkPlans(planIds: ids);
    state = AsyncValue.data(MyPlanState(bookmarkPlanList: plans));
  }

  Future<void> unBookmark({
    required String planId,
  }) async {
    final userId = fireauth.currentUser?.uid;
    await booksorce.deleteBookmarkData(
      planId: planId,
      userId: userId.toString(),
    );
    await refreshBookmarkData();
  }
}
