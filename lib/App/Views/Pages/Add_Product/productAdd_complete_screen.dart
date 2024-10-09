import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../Routes/app_routes.dart';
import '../../../Utils/Constants/app_colors.dart';
import '../../../Widgets/common/text_theme_extention.dart';
import '../../../Utils/Constants/app_images.dart';
import '../../../Utils/Constants/app_sizes.dart';
import '../../../Utils/Constants/app_strings.dart';
class ProductAddedCompleteScreen extends StatelessWidget {
  const ProductAddedCompleteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSizes.h2),
            child: Column(
              children: [
                Gap(AppSizes.h10),
                Image.asset(AppImages.logo,height: AppSizes.h10,width: AppSizes.w30,),
                Gap(AppSizes.h4),
                Text(
                  'إضافة منتج جديد',
                  style: ThemeExtensions(context).headlineMedium,
                ),
                Text(
                  'لقد تم إضافة المنتج بنجاح',
                  style: ThemeExtensions(context).bodyMedium,
                ),
                Gap(AppSizes.h10),
                Image.asset(AppImages.paymentCompletedIcon,height: AppSizes.h20,width: AppSizes.w30,),
                Gap(AppSizes.h16),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.toNamed(AppRoutes.homeBottomNave);
                    },
                    child: Text(
                      'لائحة منتجاتي',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(
                          fontWeight: FontWeight.w800,
                          color: AppColors.beige),
                    ),
                  ),
                ),
                Gap(AppSizes.h4),
                InkWell(
                  onTap: () {
                  },
                  child: Text.rich(TextSpan(children: [
                    TextSpan(
                        text: AppStrings.notHaveAnAccount1,
                        style:
                        ThemeExtensions(context).bodySmall?.copyWith(
                          fontWeight: FontWeight.w800,
                          decoration: TextDecoration.underline,
                        )),
                    TextSpan(
                        text: AppStrings.notHaveAnAccount2,
                        style: ThemeExtensions(context).bodySmall),
                    TextSpan(
                        text: AppStrings.notHaveAnAccount3,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(
                          fontWeight: FontWeight.w800,
                          decoration: TextDecoration.underline,
                        ))
                  ])),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              AppImages.newPasswordGraphics,
              width: AppSizes.screenWidth,
            ),
          ),
          Positioned(
            left: 10,
            top: 40,
            child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: CircleBorder()
                ),
                onPressed: () {
                  Get.back();
            }, child: Image(image: AssetImage(AppImages.iconNext),height: AppSizes.h2,width: AppSizes.w6,)),
          )
        ],
      ),
    );
  }
}
