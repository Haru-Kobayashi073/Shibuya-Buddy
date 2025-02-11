import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/entities/place.dart';
import '../../i18n/strings.g.dart';
import '../../utils/providers/ad_helper/ad_helper.dart';
import '../../utils/styles/app_text_style.dart';
import '../components/error_view.dart';
import '../components/loading_overlay.dart';
import 'map_page_notifier.dart';

class MapPage extends ConsumerWidget {
  const MapPage({
    super.key,
    required this.places,
  });

  final List<Place> places;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoaded =
        ref.watch(adHelperProvider.select((value) => value.isLoaded));
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
              if (value.bannerAd != null && isLoaded)
                Align(
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                    width: value.bannerAd!.size.width.toDouble(),
                    height: value.bannerAd!.size.height.toDouble(),
                    child: AdWidget(ad: value.bannerAd!),
                  ),
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
