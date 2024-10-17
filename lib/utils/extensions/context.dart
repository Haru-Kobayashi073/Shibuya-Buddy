import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  double get deviceWidth => MediaQuery.of(this).size.width;
  double get deviceHeight => MediaQuery.of(this).size.height;
  bool get isAndroid => Theme.of(this).platform == TargetPlatform.android;
  bool get isIOS => Theme.of(this).platform == TargetPlatform.iOS;
  TextStyle get h1 => Theme.of(this).textTheme.displayLarge!;
  TextStyle get h2 => Theme.of(this).textTheme.displayMedium!;
  TextStyle get h3 => Theme.of(this).textTheme.displaySmall!;
  TextStyle get h4 => Theme.of(this).textTheme.headlineMedium!;
  TextStyle get h5 => Theme.of(this).textTheme.headlineSmall!;
  TextStyle get h6 => Theme.of(this).textTheme.titleLarge!;
  TextStyle get subtitleStyle => Theme.of(this).textTheme.titleMedium!;
  TextStyle get bodyStyle => Theme.of(this).textTheme.bodyMedium!;
  TextStyle get smallStyle => Theme.of(this).textTheme.bodySmall!;
}
