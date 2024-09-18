import 'package:flutter/material.dart';
import 'package:interior_coffee/utils/theme/custom_themes/appbar_theme.dart';
import 'package:interior_coffee/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:interior_coffee/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:interior_coffee/utils/theme/custom_themes/chip_theme.dart';
import 'package:interior_coffee/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:interior_coffee/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:interior_coffee/utils/theme/custom_themes/text_field_theme.dart';
import 'package:interior_coffee/utils/theme/custom_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  //Light theme properties
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.brown,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButton.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFieldTheme.lightInputDecorationTheme,
  );

  //Dark theme properties
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.brown,
    textTheme: TTextTheme.darkTextTheme,
    chipTheme: TChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButton.darkOutlinedButtonTheme,
    inputDecorationTheme: TTextFieldTheme.darkInputDecorationTheme,
  );
}
