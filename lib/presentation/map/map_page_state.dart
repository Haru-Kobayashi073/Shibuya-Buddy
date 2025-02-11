import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

part 'map_page_state.freezed.dart';

@freezed
abstract class MapPageState with _$MapPageState {
  const factory MapPageState({
    BannerAd? bannerAd,
    required List<Marker> markers,
  }) = _MapPageState;
}
