import '../entities/place.dart';

// ignore: one_member_abstracts comment
abstract interface class PlaceRepository {
  Future<List<Place>> getPlacesByPlanId({required String planId});
}
