// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_detail_api_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations

class _PlaceDetailApiClient implements PlaceDetailApiClient {
  _PlaceDetailApiClient(
    this._dio, {
    this.baseUrl,
    this.errorLogger,
  });

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<GoogleMapPlaceDetail> searchPlaceByName(
      {required String searchQuery}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'Content-Type': 'application/json',
      r'X-Goog-Api-Key': '',
      r'X-Goog-FieldMask': 'places.name,places.location',
      r'locationBias': null,
      r'minRating': 3.0,
      r'pageSize': 1,
      r'maxResultCount': 5,
    };
    _headers.removeWhere((k, v) => v == null);
    final _data = searchQuery;
    final _options = _setStreamType<GoogleMapPlaceDetail>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: 'application/json',
    )
        .compose(
          _dio.options,
          '/places',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late GoogleMapPlaceDetail _value;
    try {
      _value = GoogleMapPlaceDetail.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$placeDetailApiClientHash() =>
    r'51928a0d64e4ccee8987e189415331f9f5d2d9dc';

/// See also [placeDetailApiClient].
@ProviderFor(placeDetailApiClient)
final placeDetailApiClientProvider = Provider<PlaceDetailApiClient>.internal(
  placeDetailApiClient,
  name: r'placeDetailApiClientProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$placeDetailApiClientHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PlaceDetailApiClientRef = ProviderRef<PlaceDetailApiClient>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
