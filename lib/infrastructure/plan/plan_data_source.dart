import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/place.dart';
import '../../domain/entities/plan.dart';
import '../../domain/entities/plan_prompt.dart';
import '../../domain/repositories/plan_repository.dart';
import '../firebase/cloud_firestore_provider.dart';

part 'plan_data_source.g.dart';

@riverpod
class PlanDataSource extends _$PlanDataSource implements PlanRepository {
  FirebaseFirestore get firestore => ref.read(cloudFirestoreProvider);
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
    return;
  }
}
