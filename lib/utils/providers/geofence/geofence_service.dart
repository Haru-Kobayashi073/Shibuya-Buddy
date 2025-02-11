import 'dart:isolate';

import 'package:native_geofence/native_geofence.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../main.dart';
import '../../custom_logger.dart';

part 'geofence_service.g.dart';

const geofenceSendPort = 'geofence_send_port';
final ReceivePort geofenceReceivePort = ReceivePort();

@riverpod
class GeofenceService extends _$GeofenceService {
  NativeGeofenceManager get nativeGeofenceManager =>
      NativeGeofenceManager.instance;
  @override
  void build() {
    return;
  }

  Future<void> initialize() async {
    await nativeGeofenceManager.initialize();
    await checkPermissionAboutLocation();
    logger.d('initializeAppServices: geofenceService initialized');
    await getRegisteredGenfences();
  }

  Future<void> addGeofence({
    required Location location,
    required String id,
  }) async {
    final zone = Geofence(
      id: id,
      location: location,
      radiusMeters: 50,
      triggers: {
        GeofenceEvent.enter,
      },
      iosSettings: const IosGeofenceSettings(
        initialTrigger: true,
      ),
      androidSettings: const AndroidGeofenceSettings(
        initialTriggers: {GeofenceEvent.enter},
        expiration: Duration(days: 7),
        notificationResponsiveness: Duration(minutes: 5),
      ),
    );

    if (await checkPermissionAboutLocation()) {
      await nativeGeofenceManager.createGeofence(zone, geofenceTriggered);
    }
  }

  Future<void> deleteGeofence({required String id}) async {
    await nativeGeofenceManager.removeGeofenceById(id);
  }

  Future<void> deleteGeofences() async {
    await nativeGeofenceManager.removeAllGeofences();
  }

  Future<bool> checkPermissionAboutLocation() async {
    final locationPerm = await Permission.locationWhenInUse.request();
    final backgroundLocationPerm = await Permission.locationAlways.request();
    return locationPerm.isGranted && backgroundLocationPerm.isGranted;
  }

  Future<void> getRegisteredGenfences() async {
    final geofences = await nativeGeofenceManager.getRegisteredGeofences();
    logger.d('geofences: $geofences');
  }
}
