import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

part 'ad_helper_state.freezed.dart';

@freezed
abstract class AdHelperState with _$AdHelperState {
  const factory AdHelperState({
    BannerAd? bannerAd,
    NativeAd? nativeAd,
    @Default(false) bool isLoaded,
  }) = _AdHelperState;
}
