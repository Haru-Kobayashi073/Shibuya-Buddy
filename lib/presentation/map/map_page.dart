import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../domain/entities/place.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key, required this.place});

  final List<Place> place;

  /// Google Maps アプリがあればアプリを開き、なければブラウザで Google Maps を開く
  Future<void> _openGoogleMapApp(double lat, double lng) async {
    // Google Maps アプリを呼び出すための URL スキーム
    final googleMapSchemeUrl = 'comgooglemaps://?q=$lat,$lng';
    final uriScheme = Uri.parse(googleMapSchemeUrl);

    // アプリを開けない場合のフォールバック（ブラウザで開く）
    final fallbackUrl =
        'https://www.google.com/maps/search/?api=1&query=$lat,$lng';
    final uriFallback = Uri.parse(fallbackUrl);

    // url_launcher の canLaunchUrl / launchUrl を使用
    if (await canLaunchUrl(uriScheme)) {
      // Google Maps アプリを起動
      await launchUrl(uriScheme);
    } else if (await canLaunchUrl(uriFallback)) {
      // ブラウザで Google Maps を開く
      await launchUrl(uriFallback);
    } else {
      // 開けない場合のエラー処理
      debugPrint('Could not open Google Maps.');
    }
  }

  @override
  Widget build(BuildContext context) {
    // Marker リストを生成
    final markers = place.map((p) {
      final lat = p.location.latitude;
      final lng = p.location.longitude;
      return Marker(
        markerId: MarkerId(p.name),
        position: LatLng(lat, lng),
        // Marker タップ時に Google Maps アプリへ飛ばしたい場合
        onTap: () {
          _openGoogleMapApp(lat, lng);
        },
        infoWindow: InfoWindow(
          title: p.name,
          // 吹き出し（InfoWindow）自体をタップしたときに Google Maps アプリへ飛ばしたい場合
          onTap: () {
            _openGoogleMapApp(lat, lng);
          },
        ),
      );
    }).toSet();

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
        myLocationButtonEnabled: false,
        markers: markers,
      ),
    );
  }
}
