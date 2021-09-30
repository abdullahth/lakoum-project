import 'package:flutter/material.dart';

import 'enums/fonts.dart';

final appThemeData = ThemeData(
  primaryColor: const Color(0xFF0a483d),
  scaffoldBackgroundColor: Colors.white,
  fontFamily: AppFonts.quicksand.fontFamilyName,
  colorScheme: ColorScheme(
    primary: const Color(0xFF0a483d),
    primaryVariant: const Color(0xFF003b31),
    secondary: const Color(0xFF575757),
    secondaryVariant: const Color(0xFF424343),
    surface: Colors.white,
    background: Colors.white,
    error: Colors.red.shade900,
    onPrimary: const Color(0xFF0a483d),
    onSecondary: const Color(0xFF575757),
    onSurface: Colors.white,
    onBackground: Colors.white,
    onError: Colors.red.shade900,
    brightness: Brightness.light,
  ),
);
