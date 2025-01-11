// lib/domain/repositories/location_repository.dart
import '../entities/location.dart';

abstract interface class LocationRepository {
  Future<Location> getCurrentLocation();
}
