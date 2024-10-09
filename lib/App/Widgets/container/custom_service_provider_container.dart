import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../Utils/Constants/app_colors.dart';
import '../../Utils/Constants/app_images.dart';
import '../../Utils/Constants/app_sizes.dart';
import '../Button/custom_button.dart';

class customServiceProvideronatiner extends StatelessWidget {
  const customServiceProvideronatiner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSizes.screenWidth,
      height: AppSizes.h8,
      padding: EdgeInsets.symmetric(horizontal: AppSizes.w4),
      decoration: BoxDecoration(
          color: AppColors.containerColor,
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: AppSizes.h2 * 0.8),
                child: Image(
                  image: AssetImage(AppImages.aweber_logo),
                  height: 32,
                  width: 32,
                ),
              ),
              Gap(AppSizes.w4),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "الشركة الكويتية",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontWeight: FontWeight.w900),
                  ),
                  Text(
                    "البناء و الاستثمار",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontWeight: FontWeight.w500),
                  ),
                  Gap(AppSizes.h2 * 0.5),
                ],
              )
            ],
          ),
          SizedBox(
              height: AppSizes.h4,
              child: VerticalDivider(
                thickness: 0.5,
                color: AppColors.stealBlue,
              )),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.star_border,
                    color: AppColors.blue,
                    size: AppSizes.w4 * 1.2,
                  ),
                  Gap(AppSizes.w2),
                  Text(
                    "5.0",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(fontWeight: FontWeight.w900),
                  ),
                ],
              ),
              Gap(AppSizes.h2 * 0.2),
              SizedBox(
                  height: AppSizes.h4,
                  child: CustomButtom(text: 'أعمال البناء')),
            ],
          ),
          SizedBox(
              height: AppSizes.h4,
              child: VerticalDivider(
                thickness: 0.5,
                color: AppColors.stealBlue,
              )),
          Icon(
            Icons.favorite_border,
            color: AppColors.stealBlue,
          )
        ],
      ),
    );
  }
}
