import 'dart:io';

import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../custom_logger.dart';
import 'ad_helper_state.dart';

part 'ad_helper.g.dart';

@riverpod
class AdHelper extends _$AdHelper {
  static String get bannerAdUnitId {
    const admobiOSBannerUnitId = String.fromEnvironment('admobiOSBannerUnitId');
    const admobAndroidBannerUnitId =
        String.fromEnvironment('admobAndroidBannerUnitId');
    if (Platform.isAndroid) {
      return admobiOSBannerUnitId;
    } else if (Platform.isIOS) {
      return admobAndroidBannerUnitId;
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }

  static String get nativeAdUnitId {
    const admobiOSNativeUnitId = String.fromEnvironment('admobiOSNativeUnitId');
    const admobAndroidNativeUnitId =
        String.fromEnvironment('admobAndroidNativeUnitId');
    if (Platform.isAndroid) {
      return admobiOSNativeUnitId;
    } else if (Platform.isIOS) {
      return admobAndroidNativeUnitId;
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }

  @override
  AdHelperState build() {
    ref.onDispose(() async {
      await state.bannerAd?.dispose();
    });
    return const AdHelperState();
  }

  Future<void> loadBannerAd() async {
    if (!state.isLoaded) {
      await BannerAd(
        adUnitId: AdHelper.bannerAdUnitId,
        request: const AdRequest(),
        size: AdSize.banner,
        listener: BannerAdListener(
          onAdLoaded: (ad) {
            state = state.copyWith(bannerAd: ad as BannerAd, isLoaded: true);
            logger.i('Banner ad loaded');
          },
          onAdFailedToLoad: (ad, err) {
            logger.e('Failed to load a banner ad: $err');
            ad.dispose();
          },
        ),
      ).load();
    }
  }

  Future<void> loadNativeAd() async {
    await NativeAd(
      adUnitId: AdHelper.nativeAdUnitId,
      listener: NativeAdListener(
        onAdLoaded: (ad) {
          state = state.copyWith(nativeAd: ad as NativeAd, isLoaded: true);
          logger.i('Native ad loaded');
        },
        onAdFailedToLoad: (ad, error) {
          // Dispose the ad here to free resources.
          logger.e('Failed to load a native ad: $error');
          ad.dispose();
        },
      ),
      request: const AdRequest(),
      // Styling
      nativeTemplateStyle: NativeTemplateStyle(
        // Required: Choose a template.
        templateType: TemplateType.medium,
        // Optional: Customize the ad's style.
        cornerRadius: 12,
        callToActionTextStyle: NativeTemplateTextStyle(
          style: NativeTemplateFontStyle.monospace,
          size: 16,
        ),
      ),
    ).load();
  }
}
