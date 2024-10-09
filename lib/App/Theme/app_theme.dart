import 'package:flutter/material.dart';
import '../Utils/Constants/app_colors.dart';
import 'Custom_Theme/app_elevatedButton.dart';
import 'Custom_Theme/app_outlinedButton.dart';
import 'Custom_Theme/app_text.dart';
import 'Custom_Theme/divider_theme.dart';
import 'Custom_Theme/textfield_theme.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
        scaffoldBackgroundColor: AppColors.white,
        useMaterial3: true,
        textTheme: AppTextTheme.textLight,
        elevatedButtonTheme: AppElevatedButton.elevatedButtonThemeLight,
        outlinedButtonTheme: AppOutlinedButton.outlinedButtonThemeLight,
        dividerTheme: AppDivider.dividerThemeLight,
      inputDecorationTheme: TextFormFieldTheme.lightInputDecorationTheme
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.black,
      useMaterial3: true,
    );
  }
}
