abstract interface class PlaceDetailRepository {
  Future<List<String>> getSearchPlaceIds({
    required List<String> placeNameList,
  });
  Future<List<String>> getPlacesPhotoUrls({
    required List<String> placeIds,
  });
}
