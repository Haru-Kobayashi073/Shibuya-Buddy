import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/entities/place.dart';
import '../../i18n/strings.g.dart';
import '../../utils/analytics_event.dart';
import '../../utils/providers/ad_helper/ad_helper.dart';
import '../../utils/providers/analytics/analytics.dart';
import '../../utils/styles/app_text_style.dart';
import '../components/error_view.dart';
import '../components/loading_overlay.dart';
import 'map_page_notifier.dart';

class MapPage extends HookConsumerWidget {
  const MapPage({
    super.key,
    required this.places,
  });

  final List<Place> places;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(
      () {
        Future.delayed(Duration.zero, () async {
          await ref
              .read(analyticsNotifierProvider.notifier)
              .logScreenView(ScreenViewEvent.mapPageView);
        });
        return null;
      },
      [],
    );
    final state = ref.watch(mapPageNotifierProvider(places));
    final i18n = Translations.of(context);

    return state.when(
      data: (value) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              i18n.mapPage.title,
              style: AppTextStyle.textStyle.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: Stack(
            children: [
              GoogleMap(
                initialCameraPosition: CameraPosition(
                  target: LatLng(
                    places.first.location.latitude,
                    places.first.location.longitude,
                  ),
                  zoom: 14,
                ),
                myLocationButtonEnabled: false,
                markers: value.markers.toSet(),
              ),
              Consumer(
                builder: (_, ref, __) {
                  final ads = ref.watch(adHelperProvider);
                  if (ads.bannerAd != null && ads.isLoadedBannerAd) {
                    return Align(
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                        width: ads.bannerAd!.size.width.toDouble(),
                        height: ads.bannerAd!.size.height.toDouble(),
                        child: AdWidget(ad: ads.bannerAd!),
                      ),
                    );
                  }
                  return const SizedBox();
                },
              ),
            ],
          ),
        );
      },
      error: (e, s) => ErrorView(
        error: e,
        stackTrace: s,
        onRetry: () => ref.invalidate(mapPageNotifierProvider(places)),
      ),
      loading: Loading.new,
    );
  }
}
