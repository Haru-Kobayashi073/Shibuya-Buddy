import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'infrastructure/firebase/firebase_options_dev.dart' as dev;
import 'infrastructure/firebase/firebase_options_prod.dart' as prod;
import 'presentation/app.dart';

const flavor = String.fromEnvironment('flavor');

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final firebaseOptions = flavor == 'prod'
      ? prod.DefaultFirebaseOptions.currentPlatform
      : dev.DefaultFirebaseOptions.currentPlatform;
  await Firebase.initializeApp(options: firebaseOptions);
  runApp(const App());
}
