import 'package:flutter/material.dart';

import '../../Utils/Constants/app_colors.dart';

class AppDivider {
  static DividerThemeData get dividerThemeLight {
    return const DividerThemeData(
      color: AppColors.blue,
      thickness: 2,
    );
  }
}
