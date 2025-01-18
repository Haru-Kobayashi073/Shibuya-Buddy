import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../domain/entities/place.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key, required this.place});
  final List<Place> place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('マップ'),
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(
            place.first.location.latitude,
            place.first.location.longitude,
          ),
          zoom: 14,
        ),
        markers: place
            .map(
              (place) => Marker(
                markerId: MarkerId(
                  '${place.location.latitude},${place.location.longitude}',
                ),
                position: LatLng(
                  place.location.latitude,
                  place.location.longitude,
                ),
              ),
            )
            .toSet(),
      ),
    );
  }
}
