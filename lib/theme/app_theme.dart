import 'package:flutter/material.dart';

class AppColors {
  // Background
  static const background = Color(0xFF030712);
  static const background2 = Color(0xFF070B1F);

  // Logo Colors
  static const cyan = Color(0xFF00E5FF);
  static const blue = Color(0xFF1769FF);
  static const purple = Color(0xFF7C2CFF);
  static const magenta = Color(0xFFFF00C8);

  // UI
  static const card = Color(0xFF0B1026);
  static const cardLight = Color(0xFF111936);

  static const white = Color(0xFFF5F7FF);
  static const textSecondary = Color(0xFF9AA4C7);
  static const border = Color(0x3329D9FF);
}

class AppGradients {
  static const logo = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      AppColors.cyan,
      AppColors.blue,
      AppColors.purple,
      AppColors.magenta,
    ],
  );

  static const bluePurple = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      AppColors.cyan,
      AppColors.blue,
      AppColors.purple,
    ],
  );

  static const purplePink = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      AppColors.purple,
      AppColors.magenta,
    ],
  );
}

class AppTheme {
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,

    scaffoldBackgroundColor: AppColors.background,

    colorScheme: const ColorScheme.dark(
      primary: AppColors.cyan,
      secondary: AppColors.magenta,
      surface: AppColors.card,
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
    ),

    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        color: AppColors.white,
        fontWeight: FontWeight.w800,
      ),
      headlineMedium: TextStyle(
        color: AppColors.white,
        fontWeight: FontWeight.w800,
      ),
      titleLarge: TextStyle(
        color: AppColors.white,
        fontWeight: FontWeight.w700,
      ),
      titleMedium: TextStyle(
        color: AppColors.white,
        fontWeight: FontWeight.w600,
      ),
      bodyLarge: TextStyle(
        color: AppColors.white,
      ),
      bodyMedium: TextStyle(
        color: AppColors.textSecondary,
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.card,

      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: const BorderSide(
          color: AppColors.border,
        ),
      ),

      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: const BorderSide(
          color: AppColors.border,
        ),
      ),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: const BorderSide(
          color: AppColors.cyan,
          width: 1.5,
        ),
      ),

      hintStyle: const TextStyle(
        color: AppColors.textSecondary,
      ),
    ),
  );
}