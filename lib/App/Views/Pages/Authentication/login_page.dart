import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:thiqah_services_provider/App/Widgets/common/text_theme_extention.dart';

import '../../../Controllers/login_Controller.dart';
import '../../../Routes/app_routes.dart';
import '../../../Utils/Constants/app_colors.dart';
import '../../../Utils/Constants/app_images.dart';
import '../../../Utils/Constants/app_sizes.dart';
import '../../../Utils/Constants/app_strings.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    LogInController controller = Get.put(LogInController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            height: AppSizes.screenHeight,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppSizes.h2),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Gap(AppSizes.h4 * 1.4),
                        Image.asset(AppImages.logo,height: AppSizes.h10,width: AppSizes.w30,),
                        Gap(AppSizes.h4),
                        Text(
                          AppStrings.loginTitle,
                          style: context.headlineMedium,
                        ),
                        Gap(AppSizes.h2 * 0.5),
                        Text.rich(TextSpan(children: [
                          TextSpan(
                              text: AppStrings.loginSubTitle1,
                              style: ThemeExtensions(context).bodyMedium),
                          TextSpan(
                              text: AppStrings.loginSubTitle2,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(fontWeight: FontWeight.w800))
                        ])),
                        Gap(AppSizes.h2),
                        TextFormField(
                          decoration: const InputDecoration(
                              hintText: AppStrings.nameHint,
                              suffixIcon: Icon(Icons.person)),
                        ),
                        Gap(AppSizes.h2),
                        TextFormField(
                          decoration: const InputDecoration(
                              hintText: AppStrings.passwordHint,
                              suffixIcon: Icon(CupertinoIcons.lock_fill)),
                        ),
                        Gap(AppSizes.h2 * 0.5),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(AppRoutes.otpScreen);
                          },
                          child: SizedBox(
                            width: double.infinity,
                            child: Text(
                              AppStrings.forgetPassword,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(fontWeight: FontWeight.w800),
                            ),
                          ),
                        ),
                        Gap(AppSizes.h2),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                            },
                            child: Text(
                              AppStrings.logIn,
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
                        Gap(AppSizes.h6),
                        InkWell(
                          onTap: () {
                            Get.toNamed(AppRoutes.signUp);
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
                ),
                const Expanded(child: Gap(2)),
                Image.asset(
                  AppImages.graphicsLogin,
                  width: AppSizes.screenWidth,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
