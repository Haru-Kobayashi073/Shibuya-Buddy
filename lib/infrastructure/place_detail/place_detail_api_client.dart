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

  static const placeDetailAPIKey = String.fromEnvironment('placeDetailAPIKey');

  @POST('/places')
  @Headers(<String, dynamic>{
    'Content-Type': 'application/json',
    'X-Goog-Api-Key': placeDetailAPIKey,
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
  Future<GoogleMapPlaceDetail> searchPlaceByName({
    @Body() String searchQuery,
  });

  @GET('/{placeId}/media')
  @Headers(<String, dynamic>{
    'Content-Type': 'application/json',
    'X-Goog-Api-Key': placeDetailAPIKey,
  })
  Future<PlacePhotoResponse> searchPlacePhotoById({
      @Path('placeId') String placeId,
      @Query('maxHeightPx') int maxHeightPx,
      @Query('maxWidthPx') int maxWidthPx,
    });
}
