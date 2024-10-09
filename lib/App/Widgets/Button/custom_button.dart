import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:thiqah_services_provider/App/Widgets/common/text_theme_extention.dart';

import '../../Utils/Constants/app_colors.dart';
import '../../Utils/Constants/app_sizes.dart';
class CustomButtom extends StatelessWidget {
  const CustomButtom({
    super.key, required this.text, this.withCross = false,
  });
  final String text;
  final bool withCross;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,  // Set background color to white
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: AppSizes.w4),
        elevation: 0,                   // Remove elevation
        shadowColor: Colors.transparent, // Remove shadow
        side: BorderSide(
          color: AppColors.stealBlue,   // Set border color to steal blue
          width: 1.0,                   // Set border width
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         withCross? Icon(CupertinoIcons.multiply,color: AppColors.blue2,size: 16,):SizedBox.shrink(),
    withCross? Gap(AppSizes.w2):SizedBox.shrink(),
          Text(
            text,
            style: context.bodySmall!.copyWith(
              color: AppColors.blue,
            ),
          ),

        ],
      ),
    );
  }
}