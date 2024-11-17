import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_color.dart';


/// A text style that uses the IBM Plex Sans JP font.
/// example usage:
/// ```dart
/// Text(
///  'Hello, World!',
///   style: AppTextStyle.textStyle.copyWith(
///   fontSize: 24,
///   fontWeight: FontWeight.bold,
///   ),
/// )
/// ```
class AppTextStyle {
  AppTextStyle._();

  static TextStyle textStyle = GoogleFonts.ibmPlexSansJp.call(
    color: AppColor.black,
  );
}
