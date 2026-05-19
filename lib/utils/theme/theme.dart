import 'package:e_commerce_app/utils/theme/custom_themes/app_bar_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_themes/bottom_sheet.dart';
import 'package:e_commerce_app/utils/theme/custom_themes/check_box.dart';
import 'package:e_commerce_app/utils/theme/custom_themes/chip_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_themes/outline_bvutton_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_themes/text_filed_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class Theming {
  Theming._();

  /// Light
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,

    appBarTheme: AppBarTheming.lightAppBarTheme,
    checkboxTheme: CheckBoxTheming.lightCheckBoxTheme,
    bottomSheetTheme: BottomSheetTheming.lightBottomSheetThemingData,
    outlinedButtonTheme: OutlineBvuttonTheming.lightOutLineButtonTheme,
    inputDecorationTheme: TextFiledTheming.lightInputDecorationTheme,
    chipTheme: ChipTheming.lightChipTheme,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextTheming.lightTextTheme,
    elevatedButtonTheme: ElevatedButtonTheming.lightElevatedButtonTheme,
  );

  /// Dark
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    appBarTheme: AppBarTheming.darkAppBarTheme,
    checkboxTheme: CheckBoxTheming.darkCheckBoxTheme,
    bottomSheetTheme: BottomSheetTheming.darkBottomSheetThemingData,
    outlinedButtonTheme: OutlineBvuttonTheming.darkOutLineButtonTheme,
    inputDecorationTheme: TextFiledTheming.darkInputDecorationTheme,
    chipTheme: ChipTheming.darkChipTheme,
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TextTheming.darkTextTheme,
    elevatedButtonTheme: ElevatedButtonTheming.darkElevatedButtonTheme,
  );
}
