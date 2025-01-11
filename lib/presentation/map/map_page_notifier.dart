import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/entities/location.dart';
import '../../domain/repositories/location_repository.dart';

class MapNotifier extends StateNotifier<Location?> {
  MapNotifier(this.locationRepository) : super(null);
  final LocationRepository locationRepository;

  Future<void> loadCurrentLocation() async {
    try {
      final location = await locationRepository.getCurrentLocation();
      state = location;
    } on Exception catch (e) {
      print(e);
      state = null;
    }
  }
}

final mapNotifierProvider =
    StateNotifierProvider<MapNotifier, Location?>((ref) {
  final locationRepository = ref.watch(locationRepositoryProvider);
  return MapNotifier(locationRepository);
});

// リポジトリプロバイダー
final locationRepositoryProvider = Provider<LocationRepository>((ref) {
  return MockLocationRepository(); 
});

class MockLocationRepository implements LocationRepository {
  @override
  Future<Location> getCurrentLocation() async {
    await Future<void>.delayed(
      const Duration(seconds: 1),
    ); 
    return const Location(latitude: 35.6895, longitude: 139.6917);
  }
}
