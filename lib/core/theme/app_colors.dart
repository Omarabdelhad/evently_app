import 'package:flutter/material.dart';

abstract class AppColors {
  const AppColors();

  Brightness get brightness;
  Color get disableColor;
  Color get primaryColor;
  Color get secondaryTexColor;
  Color get backgroundColor;
  Color get inputsColor;
  Color get strockColor;
  Color get errorColor;
  Color get mainTextColor;
}

class LightAppColors extends AppColors {
  const LightAppColors();

  @override
  Color get primaryColor => const Color(0xFF0E3A99);

  @override
  Color get disableColor => const Color(0xFFB9B9B9);

  @override
  Color get mainTextColor => primaryColor;

  @override
  Color get secondaryTexColor => const Color(0xFF686868);

  @override
  Color get backgroundColor => const Color(0xFFF4F7FF);

  @override
  Color get inputsColor => const Color(0xFFFFFFFF);

  @override
  Color get strockColor => const Color(0xFF1C1C1C);

  @override
  Color get errorColor => const Color(0xFFFF3232);

  @override
  // TODO: implement brightness
  Brightness get brightness => Brightness.light;
}

class DarkAppColors extends AppColors {
  const DarkAppColors();

  @override
  Color get primaryColor => const Color(0xFF457AED);

  @override
  Color get disableColor => const Color(0xFFB9B9B9);

  @override
  Color get mainTextColor => const Color(0xFFFFFFFF);

  @override
  Color get secondaryTexColor => const Color(0xFFD6D6D6);

  @override
  Color get backgroundColor => const Color(0xFF000F30);

  @override
  Color get inputsColor => const Color(0xFF001440);

  @override
  Color get strockColor => const Color(0xFFFFFFFF);

  @override
  Color get errorColor => const Color(0xFFFF3232);

  @override
  // TODO: implement brightness
  Brightness get brightness => Brightness.dark;
}
