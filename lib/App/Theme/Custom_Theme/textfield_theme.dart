import 'package:flutter/material.dart';

import '../../Utils/Constants/app_colors.dart';

class TextFormFieldTheme{
  // private Constructor
  TextFormFieldTheme._();
  //input decoration for light Mode
  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    contentPadding: EdgeInsets.symmetric(vertical: 4,horizontal: 8),
    prefixIconColor: AppColors.blue2,
    suffixIconColor: AppColors.blue2,
    labelStyle:const TextStyle().copyWith(fontSize: 14,color: AppColors.blue,),
    hintStyle:const TextStyle().copyWith(fontSize: 14, color: AppColors.blue2),
    errorStyle:const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle:const TextStyle().copyWith(color: Colors.blue.withOpacity(0.8)),
    border:const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(10),
      borderSide:const BorderSide(width: 1, color: AppColors.blue2)
    ),
    enabledBorder:const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(10),
      borderSide:const BorderSide(width: 1, color: AppColors.blue2)
    ),
    focusedBorder:const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(10),
        borderSide:const BorderSide(width: 1, color: AppColors.blue2)
    ),
    errorBorder:const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(10),
        borderSide:const BorderSide(width: 1, color: Colors.red)
    ),
    focusedErrorBorder:const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(10),
        borderSide:const BorderSide(width: 2, color: Colors.orange)
    )
  );
  //input decoration for Dark Mode
}