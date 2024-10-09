import 'package:flutter/material.dart';

import '../../Utils/Constants/app_colors.dart';
import '../../Utils/Constants/app_sizes.dart';
class AppOutlinedButton{
  static OutlinedButtonThemeData get outlinedButtonThemeLight{
    return OutlinedButtonThemeData(
        style: ButtonStyle(
            foregroundColor: MaterialStatePropertyAll(AppColors.beige),
            shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppSizes.s10),side: BorderSide(color: AppColors.beige)
                )
            )
        )
    );
  }

}