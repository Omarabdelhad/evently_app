import 'package:evently_app/core/theme/app_colors.dart';
import 'package:evently_app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AppConfig {
  static ThemeData get lightAppColors => AppTheme(LightAppColors()).theme;
  static ThemeData get darkAppColors => AppTheme(DarkAppColors()).theme;
  static ThemeMode themeMode = ThemeMode.dark;
}
