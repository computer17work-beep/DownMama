import 'package:flutter/material.dart';

class AppColors {
  static const background = Color(0xFF050816);
  static const surface = Color(0xFF0B1026);

  static const cyan = Color(0xFF00E5FF);
  static const blue = Color(0xFF1769FF);
  static const purple = Color(0xFF7C2CFF);
  static const magenta = Color(0xFFFF00C8);

  static const white = Color(0xFFF5F7FF);
  static const muted = Color(0xFF9AA4C7);
}

class AppTheme {
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.background,

    colorScheme: const ColorScheme.dark(
      primary: AppColors.cyan,
      secondary: AppColors.magenta,
      surface: AppColors.surface,
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
    ),

    textTheme: const TextTheme(
      headlineMedium: TextStyle(
        color: AppColors.white,
        fontWeight: FontWeight.bold,
      ),
      titleLarge: TextStyle(
        color: AppColors.white,
        fontWeight: FontWeight.w700,
      ),
      bodyMedium: TextStyle(
        color: AppColors.muted,
      ),
    ),

    useMaterial3: true,
  );
}