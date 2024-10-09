import 'package:flutter/material.dart';

import '../../Utils/Constants/app_colors.dart';
import '../../Utils/Constants/app_sizes.dart';
class AppElevatedButton{
  static ElevatedButtonThemeData get elevatedButtonThemeLight{
    return ElevatedButtonThemeData(
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(AppColors.blue),
            foregroundColor: MaterialStatePropertyAll(AppColors.beige),
            shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppSizes.s10)
                )
            )
        )
    );
  }

}