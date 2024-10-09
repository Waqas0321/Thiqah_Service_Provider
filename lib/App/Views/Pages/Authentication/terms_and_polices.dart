import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:thiqah_services_provider/App/Widgets/common/text_theme_extention.dart';

import '../../../Controllers/terms_and_polices_controller.dart';
import '../../../Routes/app_routes.dart';
import '../../../Utils/Constants/app_colors.dart';
import '../../../Utils/Constants/app_images.dart';
import '../../../Utils/Constants/app_sizes.dart';
import '../../../Utils/Constants/app_strings.dart';

class TermsAndPolices extends StatelessWidget {
  const TermsAndPolices({super.key});
  @override
  Widget build(BuildContext context) {
    TermsPolicesController controller = Get.put(TermsPolicesController());
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            height: AppSizes.screenHeight,
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppSizes.h2),
                  child: Column(
                    children: [
                      Gap(AppSizes.h10),
                      Image.asset(AppImages.logo,height: AppSizes.h10,width: AppSizes.w30,),
                      Gap(AppSizes.h4),
                      Text(
                        AppStrings.policesTitle,
                        style: context.headlineMedium,
                      ),
                      Text.rich(TextSpan(children: [
                        TextSpan(
                            text: 'لدي حساب على التطبيق. ',
                            style:
                            ThemeExtensions(context).bodySmall),
                        TextSpan(
                            text: 'تسجيل الدخول',
                            style: ThemeExtensions(context).bodySmall?.copyWith(
                              fontWeight: FontWeight.w800,
                              decoration: TextDecoration.underline,
                            )),
                      ])),
                      Gap(AppSizes.h2),
                      Image.asset(AppImages.userDone,height: AppSizes.h20,width: AppSizes.w30,),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Get.toNamed(AppRoutes.homeBottomNave);
                          },
                          child: Text(
                            AppStrings.policesButtonText,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(
                                fontWeight: FontWeight.w800,
                                color: AppColors.beige),
                          ),
                        ),
                      ),
                      Gap(AppSizes.h18),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 50,
                  left: 0,
                  right: 0,
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
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
                  ),),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Image.asset(
                    AppImages.newPasswordGraphics,
                    width: AppSizes.screenWidth,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
