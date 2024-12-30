abstract interface class PlaceDetailRepository {
  Future<List<String>> getPlacesPhotoUrls({
    required List<String> placeIds,
  });

  Future<List<String>> getSearchPlaceIds({
    required List<String> placeNameList,
  });
}
