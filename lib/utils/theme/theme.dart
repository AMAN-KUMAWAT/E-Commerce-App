import 'package:flutter/material.dart';
import 'package:project/utils/theme/custom_themes/appbar_theme.dart';
import 'package:project/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:project/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:project/utils/theme/custom_themes/chip_theme.dart';
import 'package:project/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:project/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:project/utils/theme/custom_themes/text_field_theme.dart';
import 'package:project/utils/theme/custom_themes/text_theme.dart';

/*
creating a theme class to controll all 
the themes at a single place so that main
 file don't look messy
*/
class TAppTheme {
  //now it's good that we make something by which direct use of this constructor can be stopped
  //to stooped it's usability again ad again we will make this contrsuctor privatw
  TAppTheme._();
  //so now we will create a function for light theme, as we are here managing the themes it will also return a value in ThemeData format
  // instead of creating a function we will here create a object ofthemedata so that we can easily call it

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      textTheme: TTextTheme.lightTextTheme,
      scaffoldBackgroundColor: Colors.white,
      elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
      inputDecorationTheme: TTextFieldTheme.lightInputDecorationTheme,
      chipTheme: TChipTheme.lightThemeData,
      appBarTheme: TAppBarTheme.lightAppBarTheme,
      checkboxTheme: TCheckBoxTheme.lightCheckBoxTheme,
      bottomSheetTheme: TBottomSheetThee.lightBottomSheetTheme);

  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      textTheme: TTextTheme.darkTheme,
      scaffoldBackgroundColor: Colors.black,
      elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
      inputDecorationTheme: TTextFieldTheme.darkInputDecorationTheme,
      chipTheme: TChipTheme.darkThemeData,
      appBarTheme: TAppBarTheme.darkAppBarTheme,
      checkboxTheme: TCheckBoxTheme.darkCheckBoxTheme,
      bottomSheetTheme: TBottomSheetThee.darkBottomSheetTheme);
}
