import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:thiqah_services_provider/App/Views/Pages/home/home_bottomnav.dart';
import 'package:thiqah_services_provider/App/Widgets/common/text_theme_extention.dart';
import '../../../Routes/app_routes.dart';
import '../../../Utils/Constants/app_colors.dart';
import '../../../Utils/Constants/app_images.dart';
import '../../../Utils/Constants/app_sizes.dart';
import '../../../Utils/Constants/app_strings.dart';
class ProposalSubmittedPage extends StatelessWidget {
  const ProposalSubmittedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSizes.h2),
            child: Column(
              children: [
                Gap(AppSizes.h10),
                Image.asset(
                  AppImages.logo,
                  height: AppSizes.h10,
                  width: AppSizes.w30,
                ),
                Gap(AppSizes.h4),
                Text(
                  'تم إيداع عرض للمشروع',
                  style: context.headlineMedium,
                ),
                Text(
                  'سيتم إخطركم في حالة موافقة العميل أو طلب إستفسار',
                  style: ThemeExtensions(context).bodyMedium,
                ),
                Gap(AppSizes.h2),
                Image.asset(
                  AppImages.priceRequestCompletedGraphic,
                  height: AppSizes.h20,
                  width: AppSizes.w30,
                ),
                Gap(AppSizes.h8),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(HomeMainBottomNav());
                    },
                    child: Text(
                      'لائحة طلبات أسعار المشاريع',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.w800, color: AppColors.beige),
                    ),
                  ),
                ),
                Gap(AppSizes.h12),
                InkWell(
                  onTap: () {
                    Get.toNamed(AppRoutes.termsPlices);
                  },
                  child: Text.rich(TextSpan(children: [
                    TextSpan(
                        text: AppStrings.notHaveAnAccount1,
                        style: ThemeExtensions(context).bodySmall?.copyWith(
                          fontWeight: FontWeight.w800,
                          decoration: TextDecoration.underline,
                        )),
                    TextSpan(
                        text: AppStrings.notHaveAnAccount2,
                        style: ThemeExtensions(context).bodySmall),
                    TextSpan(
                        text: AppStrings.notHaveAnAccount3,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w800,
                          decoration: TextDecoration.underline,
                        ))
                  ])),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: AppSizes.h4,
          left: 0,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: AppColors.beige),
              onPressed: () {
                Get.back();
              },
              child: Image.asset(
                AppImages.iconNext,
                height: 24,
                width: 24,
              )),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Image.asset(
            AppImages.graphicsOTP,
            width: AppSizes.screenWidth,
          ),
        )
      ],
    );
  }
}
