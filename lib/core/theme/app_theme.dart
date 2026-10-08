import 'package:evently_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppColors appColors;
  AppTheme(this.appColors);
  ThemeData get theme => ThemeData(
    colorScheme: ColorScheme(
      brightness: appColors.brightness,
      primary: appColors.primaryColor,
      onPrimary: appColors.mainTextColor,
      secondary: appColors.strockColor,
      onSecondary: appColors.inputsColor,
      error: appColors.errorColor,
      onError: appColors.inputsColor,
      surface: appColors.backgroundColor,
      onSurface: appColors.primaryColor,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: appColors.backgroundColor,
      foregroundColor: appColors.primaryColor,
      centerTitle: true,
      shadowColor: Colors.transparent,
      elevation: 0,
    ),
    scaffoldBackgroundColor: appColors.backgroundColor,
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: appColors.primaryColor),
      bodyMedium: TextStyle(
        color: appColors.strockColor,
        fontSize: 20,
        fontWeight: .w600,
      ),
      bodySmall: TextStyle(
        color: appColors.secondaryTexColor,
        fontSize: 16,
        fontWeight: .w400,
      ),
      displayLarge: TextStyle(color: appColors.primaryColor),
      displayMedium: TextStyle(color: appColors.primaryColor),
      displaySmall: TextStyle(color: appColors.primaryColor),
      headlineLarge: TextStyle(color: appColors.primaryColor),
      headlineMedium: TextStyle(color: appColors.primaryColor),
      headlineSmall: TextStyle(color: appColors.primaryColor),
      labelLarge: TextStyle(color: appColors.primaryColor),
      labelMedium: TextStyle(
        color: appColors.primaryColor,
        fontSize: 14,
        fontWeight: .w600,
      ),
      labelSmall: TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: .w600,
      ),
      titleLarge: TextStyle(color: appColors.primaryColor),
      titleMedium: TextStyle(
        color: appColors.primaryColor,
        fontSize: 18,
        fontWeight: .w500,
      ),
      titleSmall: TextStyle(color: appColors.primaryColor),
    ),
  );
}
