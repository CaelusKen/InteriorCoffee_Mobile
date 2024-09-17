import 'package:flutter/material.dart';

class TColors {
  TColors._();

  //App basic color
  static Color primary = Color(0xFF795548);
  static Color secondary = Color(0xFFFFE57F);
  static Color accent = Color(0xFFA1887F);

  //gradient color
  static Gradient linearGradient = LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
    colors: [
      Color(0xFFFF9A9E),
      Color(0xFFFAD0C4),
      Color(0xFFFAD0C4),
    ],
  );

  //text color
  static Color textPrimary = Color(0xFF333333);
  static Color textSecondary = Color(0xFF6C757D);
  static Color textWhite = Colors.white;

  //background color
  static Color light = Color(0xFFF6F6F6);
  static Color dark = Color(0xFF272727);
  static Color primaryBackground = Color(0xFFF3F5FF);

  //background container color
  static Color lightContainer = Color(0xFFF6F6F6);
  static Color darkContainer = TColors.light.withOpacity(0.1);

  // button color
  static Color buttonPrimary = Color(0xFF795548);
  static Color buttonSecondary = Color(0xFF6C757D);
  static Color buttonDisabled = Color(0xFFC4C4C4);

  //border color
  static Color borderPrimary = Color(0xFFD9D9D9);
  static Color borderSecondary = Color(0xFFE6E6E6);

  //error and validator color
  static Color error = Color(0xFFD32F2F);
  static Color success = Color(0xFF388E3C);
  static Color warning = Color(0xFFF57C00);
  static Color info = Color(0xFF1976D2);

  //neutral shade
  static Color black = Color(0xFF232323);
  static Color darkerGrey = Color(0xFF4F4F4F);
  static Color darkGrey = Color(0xFF939393);
  static Color grey = Color(0xFFE0E0E0);
  static Color softGrey = Color(0xFFF4F4F4);
  static Color lightGrey = Color(0xFFF9F9F9);
  static Color white = Color(0xFFFFFFFF);

}