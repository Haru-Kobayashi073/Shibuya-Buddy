import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../infrastructure/firebase/cloud_firestore_provider.dart';

part 'my_plan_notifier.g.dart';

@riverpod
class MyPlanNotifier extends _$MyPlanNotifier {
  FirebaseFirestore get firestore => ref.read(cloudFirestoreProvider);
  @override
  void build() {
    return;
  }

  getCreatedPlans({required String userId}) async {
    final snapshot = await firestore
        .collection('users')
        .doc('n2lEinZTRIVzcKyMR2nTWrZJUy52')
        .get();
    debugPrint(snapshot.toString());
  }
}
