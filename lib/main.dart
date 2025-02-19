import 'dart:async';
import 'dart:ui';

import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:native_geofence/native_geofence.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'i18n/strings.g.dart';
import 'infrastructure/firebase/firebase_options_dev.dart' as dev;
import 'infrastructure/firebase/firebase_options_prod.dart' as prod;
import 'presentation/app.dart';
import 'utils/analytics_event.dart';
import 'utils/custom_logger.dart';
import 'utils/providers/geofence/geofence_service.dart';
import 'utils/providers/shared_preferences/shared_preferences_service.dart';

const flavor = String.fromEnvironment('flavor');

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initATT();
  FlutterNativeSplash.remove();
  setupGeofenceListener();
  await LocaleSettings.useDeviceLocale();
  await initializeDateFormatting();

  final firebaseOptions = flavor == 'prod'
      ? prod.DefaultFirebaseOptions.currentPlatform
      : dev.DefaultFirebaseOptions.currentPlatform;
  await Firebase.initializeApp(options: firebaseOptions);
  await FirebaseAppCheck.instance.activate(
    androidProvider:
        kReleaseMode ? AndroidProvider.playIntegrity : AndroidProvider.debug,
    appleProvider:
        kReleaseMode ? AppleProvider.deviceCheck : AppleProvider.debug,
  );

  await handleErrorForAppCheck();

  await MobileAds.instance.initialize();

  runApp(
    ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(
          await SharedPreferences.getInstance(),
        ),
      ],
      child: TranslationProvider(
        child: const App(),
      ),
    ),
  );
}

void setupGeofenceListener() {
  IsolateNameServer.removePortNameMapping(geofenceSendPort);
  final success = IsolateNameServer.registerPortWithName(
    geofenceReceivePort.sendPort,
    geofenceSendPort,
  );

  if (success) {
    logger.d('Successfully registered geofenceReceivePort');
  } else {
    logger.e('Failed to register geofenceReceivePort');
  }

  geofenceReceivePort.listen((dynamic data) async {
    logger.d('geofenceState: $data');
    for (final planId in data as List<String>) {
      final userId = FirebaseAuth.instance.currentUser?.uid;
      await FirebaseFunctions.instanceFor(
        region: 'asia-northeast1', // 東京リージョンを指定
      ).httpsCallable('updatePlanAtEnterGeofence').call<void>(
        {
          'planId': planId,
          'userId': userId,
        },
      );
      await FirebaseAnalytics.instance.logEvent(
        name: UserActionEvent.enterGeofence.key,
      );
      await NativeGeofenceManager.instance.removeGeofenceById(planId);
    }
    geofenceReceivePort.close();
  });
}

Future<void> initATT() async {
  if (await AppTrackingTransparency.trackingAuthorizationStatus ==
      TrackingStatus.notDetermined) {
    await Future<void>.delayed(const Duration(milliseconds: 200));
    await AppTrackingTransparency.requestTrackingAuthorization();
  }
}

Future<void> handleErrorForAppCheck() async {
  if (kReleaseMode) {
    // Pass all uncaught "fatal" errors from the framework to Crashlytics
    FlutterError.onError = (errorDetails) async {
      await FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
    };

    PlatformDispatcher.instance.onError = (error, stack) {
      unawaited(
        FirebaseCrashlytics.instance.recordError(error, stack, fatal: true),
      );
      return true;
    };
  }
}

@pragma('vm:entry-point')
Future<void> geofenceTriggered(GeofenceCallbackParams params) async {
  logger.d('Geofence triggered with params: $params');
  final send = IsolateNameServer.lookupPortByName(geofenceSendPort);
  final triggeredGeofenceIds = params.geofences.map((e) => e.id).toList();
  send?.send(triggeredGeofenceIds);
}
