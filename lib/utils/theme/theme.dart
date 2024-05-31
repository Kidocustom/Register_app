import 'package:e_commerce/utils/theme/custom_themes/appbar_theme.dart';
import 'package:e_commerce/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:e_commerce/utils/theme/custom_themes/check_box.dart';
import 'package:e_commerce/utils/theme/custom_themes/chip_theme.dart';
import 'package:e_commerce/utils/theme/custom_themes/custom_themes.dart';
import 'package:e_commerce/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:e_commerce/utils/theme/custom_themes/outlined_button.dart';
import 'package:e_commerce/utils/theme/custom_themes/text_field_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme._();
  //light Theme
  static ThemeData lighttheme = ThemeData(
      useMaterial3: true,
      fontFamily: "poppins",
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      textTheme: TTextTheme.lightTextTheme,
      chipTheme: TChipTheme.lightChipTheme,
      appBarTheme: TAppBarTheme.lightAppBarTheme,
      checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
      bottomSheetTheme: TBottomSheetTheme.lightBottomSheetThemeData,
      elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
      outlinedButtonTheme: TOutlinedButtonThemeData.lightOutlinedButtonTheme,
      inputDecorationTheme: TTextFormField.lightInputDecorationTheme);

  //dark Theme
  static ThemeData darktheme = ThemeData(
      useMaterial3: true,
      fontFamily: "poppins",
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      textTheme: TTextTheme.darkTextTheme,
      chipTheme: TChipTheme.darkChipTheme,
      appBarTheme: TAppBarTheme.darkAppBarTheme,
      checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
      bottomSheetTheme: TBottomSheetTheme.darkBottomSheetThemeData,
      elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
      outlinedButtonTheme: TOutlinedButtonThemeData.darkOutlinedButtonTheme,
      inputDecorationTheme: TTextFormField.darkInputDecorationTheme);
}
