import 'package:flutter/material.dart';

class AppColors {
  /// main color: 500
  static const MaterialColor primaryColors = MaterialColor(
    0xFF21ECC7,
    <int, Color>{
      100: Color(0xFFDDFCF6),
      200: Color(0xFFC5FAF0),
      300: Color(0xFFAEF8EB),
      400: Color(0xFF7FF4DF),
      500: Color(0xFF21ECC7),
      600: Color(0xFF11C9A7),
      700: Color(0xFF0D9A80),
      800: Color(0xFF096B59),
      900: Color(0xFF053C32),
    },
  );

  /// white: 50 black: 700
  static const MaterialColor greyColors = MaterialColor(
    0xFF999999,
    <int, Color>{
      50: Color(0xFFFFFFFF),
      100: Color(0xFFF1F1F5),
      200: Color(0xFFE5E5EC),
      300: Color(0xFFD4D4D4),
      400: Color(0xFF999999),
      500: Color(0xFF767676),
      600: Color(0xFF505050),
      700: Color(0xFF111111),
    },
  );

  static const MaterialColor systemColors = MaterialColor(
    0xFF04B014,
    <int, Color>{
      100: Color(0xFFDC0000),
      200: Color(0xFF04B014),
      300: Color(0xFFFFAA00),
    },
  );
}
