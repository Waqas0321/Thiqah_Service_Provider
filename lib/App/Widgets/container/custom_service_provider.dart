import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../Utils/Constants/app_colors.dart';
import '../../Utils/Constants/app_images.dart';
import '../../Utils/Constants/app_sizes.dart';
import '../Button/custom_button.dart';
class CustomAddProjectContainer extends StatelessWidget {
  const CustomAddProjectContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
          color: AppColors.containerColor,
          borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        children: [
          Container(
            height: AppSizes.h12,
            decoration: BoxDecoration(
              color: AppColors.stealBlue,  // Background color
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(image: AssetImage(AppImages.product),fit: BoxFit.cover)// Border radius
            ),
          ),
          Gap(AppSizes.h2 * 0.3),
          SizedBox(
            width: double.infinity,
            child: Text(
              '10.04.2024',
              style: Theme.of(context).textTheme.bodySmall
                  ?.copyWith(
                  color: AppColors.stealBlue),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'مشروع بناء فيلا',
                style: Theme.of(context).textTheme.bodyMedium
                    ?.copyWith(color: AppColors.blue),
              ),
              SizedBox(
                  height: AppSizes.h4,
                  child: VerticalDivider(
                    thickness: 0.5,
                  )),
              Text(
                'بناء كليا',
                style: Theme.of(context).textTheme.
                    bodyMedium
                    ?.copyWith(color: AppColors.blue),
              ),
              SizedBox(
                  height: AppSizes.h4,
                  child: VerticalDivider(
                    thickness: 0.5,
                  )),
              SizedBox(
                child: Row(
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
              ),
              SizedBox(
                  height: AppSizes.h4,
                  child: VerticalDivider(
                    thickness: 0.5,
                  )),
              CustomButtom(text: 'كهرباء عامة')

            ],
          )
        ],
      ),
    );
  }
}