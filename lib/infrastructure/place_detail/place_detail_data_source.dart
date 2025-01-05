import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/repositories/place_detail_repository.dart';
import 'place_detail_api_client.dart';

part 'place_detail_data_source.g.dart';

@riverpod
class PlaceDetailDataSource extends _$PlaceDetailDataSource
    implements PlaceDetailRepository {
  PlaceDetailApiClient get _apiClient => ref.read(placeDetailApiClientProvider);
  String get placeDetailAPIKey =>
      const String.fromEnvironment('placeDetailAPIKey');

  @override
  void build() {
    return;
  }

  @override
  Future<List<String>> getSearchPlaceIds({
    required List<String> placeNameList,
  }) async {
    final placeIds = <String>[];
    for (final placeName in placeNameList) {
      final res = await _apiClient.getPlaceIdByName(
        apiKey: placeDetailAPIKey,
        searchQuery: {
          'textQuery': placeName,
        },
      );
      placeIds.add(res.places.first.photos.first.name);
    }
    return placeIds;
  }

  @override
  Future<List<String>> getPlacesPhotoUrls({
    required List<String> placeIds,
  }) async {
    final photoUrls = <String>[];
    for (final placeId in placeIds) {
      final res = await _apiClient.searchPlacePhotoById(
        apiKey: placeDetailAPIKey,
        placeId: placeId,
        maxHeightPx: 400,
        maxWidthPx: 400,
        skipHttpRedirect: true,
      );
      photoUrls.add(res.photoUri);
    }
    return photoUrls;
  }
}
