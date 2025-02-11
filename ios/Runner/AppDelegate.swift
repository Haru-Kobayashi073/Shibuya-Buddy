import Flutter
import UIKit
import GoogleMaps
import native_geofence
import background_locator_2

func registerPlugins(registry: FlutterPluginRegistry) -> () {
  if (!registry.hasPlugin("BackgroundLocatorPlugin")) {
      GeneratedPluginRegistrant.register(with: registry)
  } 
}

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    // Used by plugin: native_geofence
    NativeGeofencePlugin.setPluginRegistrantCallback { registry in
        GeneratedPluginRegistrant.register(with: registry)
    }

    GeneratedPluginRegistrant.register(with: self)
    if let googleMapApiKey = Bundle.main.infoDictionary?["GoogleMapAPIKey"] as? String {
      GMSServices.provideAPIKey(googleMapApiKey)
    }

    BackgroundLocatorPlugin.setPluginRegistrantCallback(registerPlugins)

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
