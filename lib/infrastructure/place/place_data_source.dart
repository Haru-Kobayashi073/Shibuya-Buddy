import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/place.dart';
import '../../domain/repositories/place_repository.dart';
import '../firebase/cloud_firestore_provider.dart';

part 'place_data_source.g.dart';

@riverpod
class PlaceDataSource extends _$PlaceDataSource implements PlaceRepository {
  FirebaseFirestore get firestore => ref.read(cloudFirestoreProvider);

  @override
  void build() {
    return;
  }

  @override
  Future<List<Place>> getPlacesByPlanId({required String planId}) async {
    final snapshot = await firestore
        .collection('plans')
        .doc(planId)
        .collection('places')
        .get();
    return snapshot.docs.map((doc) => Place.fromJson(doc.data())).toList();
  }
}
