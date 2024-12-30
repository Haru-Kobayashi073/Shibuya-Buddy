import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/repositories/place_detail_repository.dart';

part 'place_detail_data_source.g.dart';

@riverpod
class PlaceDetailDataSource extends _$PlaceDetailDataSource
    implements PlaceDetailRepository {
  @override
  void build() {
    return;
  }

  @override
  Future<List<String>> getPlacesPhotoUrls({
    required List<String> placeIds,
  }) async {
    return [];
  }

  @override
  Future<List<String>> getSearchPlaceIds({
    required List<String> placeNameList,
  }) async {
    return [];
  }
}
