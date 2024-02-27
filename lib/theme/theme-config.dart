import 'package:flutter/material.dart';

class ThemeConfig {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.grey.shade50,
    colorScheme: const ColorScheme.light(
      primary: Color(0xFF6750a4),
      onPrimary:Color.fromARGB(255, 116, 69, 203),
      primaryContainer: Color.fromARGB(255, 11, 11, 12),
      onPrimaryContainer: Color.fromARGB(255, 175, 149, 223),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.grey.shade900,
    colorScheme: const ColorScheme.dark(
      primary: Color(0xFFcfbcff),
      onPrimary: Color.fromARGB(255, 116, 69, 203),
      primaryContainer: Color.fromARGB(255, 236, 233, 242),
      onPrimaryContainer: Color.fromARGB(255, 116, 69, 203),
    ),
  );
}