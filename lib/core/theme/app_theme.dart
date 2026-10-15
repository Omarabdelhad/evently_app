import 'package:evently_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeMode themeMode = ThemeMode.light;
  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.light(
      primary: AppColors.lightPrimary,
      onPrimary: AppColors.lightPrimary,
      onPrimaryContainer: AppColors.whiteColor,
      secondary: AppColors.lightFieldBorderColor,
    ),
    scaffoldBackgroundColor: AppColors.lightBackground,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
    ),
    textTheme: TextTheme(
      titleMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: AppColors.blackColor,
      ),
      bodySmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: AppColors.lightSecondaryColor,
      ),
      labelMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: AppColors.whiteColor,
      ),
      labelSmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppColors.lightPrimary,
      ),
      titleSmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: AppColors.lightPrimary,
        decoration: TextDecoration.underline,
        decorationColor: AppColors.lightPrimary,
      ),
    ),
  );
  static ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme.dark(
      primary: AppColors.darkPrimary,
      onPrimary: AppColors.whiteColor,
      onPrimaryContainer: AppColors.darkUnselectedSettings,
      secondary: AppColors.darkFieldBorderColor,
    ),
    scaffoldBackgroundColor: AppColors.darkBackground,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
    ),
    textTheme: TextTheme(
      titleMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: AppColors.whiteColor,
      ),
      bodySmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: AppColors.darkSecondaryColor,
      ),
      labelMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: AppColors.whiteColor,
      ),
      labelSmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppColors.whiteColor,
      ),
      titleSmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: AppColors.darkPrimary,
        decoration: TextDecoration.underline,
        decorationColor: AppColors.darkPrimary,
      ),
    ),
  );
}
