import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:thiqah_services_provider/App/Widgets/common/text_theme_extention.dart';
import '../../Utils/Constants/app_colors.dart';
import '../../Utils/Constants/app_sizes.dart';
import 'package:get/get.dart';

import '../../Utils/Constants/app_strings.dart';
class CustomDialog extends StatelessWidget {
  const CustomDialog({
    super.key, required this.title, required this.bodyText,
  });
  final String title;
  final String bodyText;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.beige,
      contentPadding:
      EdgeInsets.only(left: 6,right: 6, top: 6,bottom: AppSizes.h4),
      content: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: CircleBorder(),
                  ),
                  onPressed: () {
                    Get.back();
                  }, child: Icon(CupertinoIcons.multiply,color: AppColors.blue2,)),
            ),
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
            Gap(AppSizes.h2),
            Text(
              bodyText,
              style: context.bodySmall,
              textAlign: TextAlign.center,
            ),
            Gap(AppSizes.h2),
            Text(
              AppStrings.policesdialgueBody,
              style: context.bodySmall,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      elevation: 1,
    );
  }
}