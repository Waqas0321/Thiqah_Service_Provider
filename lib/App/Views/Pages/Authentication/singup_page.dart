import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:thiqah_services_provider/App/Widgets/common/text_theme_extention.dart';

import '../../../Controllers/sigup_controller.dart';
import '../../../Routes/app_routes.dart';
import '../../../Utils/Constants/app_colors.dart';
import '../../../Utils/Constants/app_images.dart';
import '../../../Utils/Constants/app_sizes.dart';
import '../../../Utils/Constants/app_strings.dart';
import 'otp_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});


  @override
  Widget build(BuildContext context) {
    SignUpController signUpController = Get.put(SignUpController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppSizes.h2),
                child: Column(
                  children: [
                    Gap(AppSizes.h4 * 1.4),
                    Image.asset(AppImages.logo,height: AppSizes.h10,width: AppSizes.w30,),
                    Gap(AppSizes.h2 * 0.5),
                    Text(
                      AppStrings.signUpTitle,
                      style: context.headlineMedium,
                    ),
                    Gap(AppSizes.h2 * 0.5),
                    Text.rich(TextSpan(children: [
                      TextSpan(
                          text: AppStrings.signUpSubTitle1,
                          style: ThemeExtensions(context).bodyMedium),
                      TextSpan(
                          text: AppStrings.signUpSubTitle2,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(fontWeight: FontWeight.w800))
                    ])),
                    Gap(AppSizes.h2),
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: 'الاسم الكامل',
                          suffixIcon: Icon(Icons.person)),
                    ),
                    Gap(AppSizes.h2 * 0.5),
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: 'رقم الهاتف',
                          suffixIcon: Icon(Icons.phone_android_outlined)),
                    ),
                    Gap(AppSizes.h2 * 0.5),
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: 'الايميل',
                          suffixIcon: Icon(Icons.alternate_email)),
                    ),
                    Gap(AppSizes.h2 * 0.5),
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: 'الرمز السري',
                          suffixIcon: Icon(CupertinoIcons.lock_fill)),
                    ),
                    Gap(AppSizes.h2 * 0.5),
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: 'تأكيد الرمز السري',
                          suffixIcon: Icon(CupertinoIcons.lock_fill)),
                    ),
                    Gap(AppSizes.h2 * 0.5),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {

                          Get.toNamed(AppRoutes.otpScreen);
                        },
                        child: Text(
                          AppStrings.signUp,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(
                              fontWeight: FontWeight.w800,
                              color: AppColors.beige),
                        ),
                      ),
                    ),
                    Gap(AppSizes.h2),
                    Text(
                      AppStrings.createAccount,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(fontWeight: FontWeight.w800),
                    ),
                    Gap(AppSizes.h2 * 0.8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: AppSizes.w30,
                          child: OutlinedButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Text(
                                    AppStrings.google,
                                    style:
                                    ThemeExtensions(context).bodySmall,
                                  ),
                                  Gap(AppSizes.w2),
                                  Image.asset(AppImages.google,height: 24,width: 24,),
                                ],
                              )),
                        ),
                        Gap(AppSizes.w2),
                        SizedBox(
                          width: AppSizes.w30,
                          child: OutlinedButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    AppStrings.apple,
                                    style:
                                    ThemeExtensions(context).bodySmall,
                                  ),
                                  Gap(AppSizes.w2),
                                  Image.asset(AppImages.apple,height: 24,width: 24,),
                                ],
                              )),
                        )
                      ],
                    ),
                    Gap(AppSizes.h2),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(onPressed: () {

                      }, child: Text(
                        'التسجيل كباحث عن خدمات',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(fontWeight: FontWeight.w800),
                      ),),
                    ),
                    Gap(AppSizes.h2),
                    InkWell(
                      onTap: () {
                        Get.toNamed(AppRoutes.termsPlices);
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
              Gap(AppSizes.h4),
              Image.asset(
                AppImages.graphicsLogin,
                width: AppSizes.screenWidth,
              )
            ],
          ),
        ),
      ),
    );
  }
}
