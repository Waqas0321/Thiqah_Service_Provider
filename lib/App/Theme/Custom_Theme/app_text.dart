import 'package:flutter/material.dart';
import '../../Utils/Constants/app_colors.dart';
class AppTextTheme{
  static TextTheme get textLight{
    return const TextTheme(

      headlineMedium: TextStyle(
        color: AppColors.blue,
        fontFamily: 'shamel',
        fontSize: 28,
        fontWeight: FontWeight.w500,

      ),
      bodyLarge: TextStyle(
        color: AppColors.blue,
        fontFamily: 'shamel',
        fontSize: 24,
        fontWeight: FontWeight.w500,

      ),
      bodyMedium: TextStyle(
          color: AppColors.blue,
          fontFamily: 'shamel',
          fontSize: 15,
          fontWeight: FontWeight.w400
      ),
      bodySmall: TextStyle(
          color: AppColors.blue,
          fontFamily: 'shamel',
          fontSize: 12,
          fontWeight: FontWeight.w400
      ),
    );
  }

  static TextTheme get textDark{
    return const TextTheme(
      bodyLarge: TextStyle(
        color: AppColors.white,
        fontFamily: 'shamel',
        fontSize: 16,
        fontWeight: FontWeight.w500,

      ),
      bodyMedium: TextStyle(
          color: AppColors.white,
          fontFamily: 'shamel',
          fontSize: 13,
          fontWeight: FontWeight.w400
      ),
      bodySmall: TextStyle(
          color: AppColors.white,
          fontFamily: 'shamel',
          fontSize: 13,
          fontWeight: FontWeight.w300
      ),
    );
  }
}