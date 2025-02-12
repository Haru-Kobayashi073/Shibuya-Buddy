import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../domain/entities/place.dart';
import '../../utils/providers/ad_helper/ad_helper.dart';
import 'map_page_state.dart';

part 'map_page_notifier.g.dart';

@riverpod
class MapPageNotifier extends _$MapPageNotifier {
  AdHelper get adHelper => ref.read(adHelperProvider.notifier);

  @override
  Future<MapPageState> build(List<Place> places) async {
    final markers = _getMarkers();
    await adHelper.loadBannerAd();

    return MapPageState(markers: markers);
  }

  List<Marker> _getMarkers() {
    return places.map((place) {
      final lat = place.location.latitude;
      final lng = place.location.longitude;
      final markerPosition = LatLng(lat, lng);
      return Marker(
        markerId: MarkerId(place.name),
        position: markerPosition,
        onTap: () async => _openGoogleMapApp(markerPosition),
        infoWindow: InfoWindow(
          title: place.name,
          onTap: () async => _openGoogleMapApp(markerPosition),
        ),
      );
    }).toList();
  }

  Future<void> _openGoogleMapApp(LatLng location) async {
    final uriScheme = Uri.parse(
      'comgooglemaps://?q=${location.latitude},${location.longitude}',
    );
    final uriFallback = Uri.parse(
      'https://www.google.com/maps/search/?api=1&query=${location.latitude},${location.longitude}',
    );

    if (await canLaunchUrl(uriScheme)) {
      await launchUrl(uriScheme);
    } else if (await canLaunchUrl(uriFallback)) {
      await launchUrl(uriFallback);
    }
  }
}
