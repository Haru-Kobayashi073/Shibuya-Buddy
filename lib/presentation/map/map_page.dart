import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../domain/entities/place.dart';
import '../../i18n/strings.g.dart';
import '../../utils/styles/app_text_style.dart';

class MapPage extends StatelessWidget {
  const MapPage({
    super.key,
    required this.places,
  });

  final List<Place> places;

  Future<void> _openGoogleMapApp(double latitude, double longitude) async {
    final uriScheme = Uri.parse('comgooglemaps://?q=$latitude,$longitude');
    final uriFallback = Uri.parse(
      'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude',
    );

    if (await canLaunchUrl(uriScheme)) {
      await launchUrl(uriScheme);
    } else if (await canLaunchUrl(uriFallback)) {
      await launchUrl(uriFallback);
    }
  }

  @override
  Widget build(BuildContext context) {
    final i18n = Translations.of(context);
    final markers = places.map((place) {
      final lat = place.location.latitude;
      final lng = place.location.longitude;
      final markerPosition = LatLng(lat, lng);
      return Marker(
        markerId: MarkerId(place.name),
        position: markerPosition,
        onTap: () async {
          await _openGoogleMapApp(lat, lng);
        },
        infoWindow: InfoWindow(
          title: place.name,
          onTap: () async {
            await _openGoogleMapApp(lat, lng);
          },
        ),
      );
    }).toSet();

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
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(
            places.first.location.latitude,
            places.first.location.longitude,
          ),
          zoom: 14,
        ),
        myLocationButtonEnabled: false,
        markers: markers,
      ),
    );
  }
}
