import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/place_detail_response.dart';
import '../../domain/entities/place_photo_response.dart';
import '../../utils/providers/dio/app_dio.dart';

part 'place_detail_api_client.g.dart';

@Riverpod(keepAlive: true)
PlaceDetailApiClient placeDetailApiClient(PlaceDetailApiClientRef ref) {
  return PlaceDetailApiClient(
    ref.watch(appDioProvider),
    baseUrl: 'https://places.googleapis.com/v1/',
  );
}

@RestApi()
abstract class PlaceDetailApiClient {
  factory PlaceDetailApiClient(Dio dio, {String? baseUrl}) =
      _PlaceDetailApiClient;

  @POST('/places:searchText')
  @Headers(<String, dynamic>{
    'Content-Type': 'application/json',
    'X-Goog-FieldMask': 'places.name,places.location,places.photos',
    'locationBias': {
      'circle': {
        'center': {'latitude': 35.6636, 'longitude': 139.6978},
        'radius': 1000.0,
      },
    },
    'minRating': 3.0,
    'pageSize': 1,
    'maxResultCount': 5,
  })
  Future<PlaceDetailResponse> getPlaceIdByName({
    @Body() required Map<String, dynamic> searchQuery,
    @Header('X-Goog-Api-Key') required String apiKey,
    @Header('X-Firebase-AppCheck') required String appCheckToken,
  });

  @GET('/{placeId}/media')
  @Headers(<String, dynamic>{
    'Content-Type': 'application/json',
  })
  Future<PlacePhotoResponse> searchPlacePhotoById({
    @Path('placeId') required String placeId,
    @Query('maxHeightPx') required int maxHeightPx,
    @Query('maxWidthPx') required int maxWidthPx,
    @Query('skipHttpRedirect') required bool skipHttpRedirect,
    @Header('X-Goog-Api-Key') required String apiKey,
    @Header('X-Firebase-AppCheck') required String appCheckToken,
  });
}
