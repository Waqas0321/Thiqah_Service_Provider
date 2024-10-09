import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:thiqah_services_provider/App/Widgets/common/text_theme_extention.dart';
import '../../../Controllers/otp_controller.dart';
import '../../../Utils/Constants/app_colors.dart';
import '../../../Utils/Constants/app_images.dart';
import '../../../Utils/Constants/app_sizes.dart';
import '../../../Utils/Constants/app_strings.dart';
import '../../../Widgets/otp_keyboard.dart'; // Import the controller

class OTPPage extends StatelessWidget {
  OTPPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    OTPController otpController = Get.put(OTPController());
    return Scaffold(
      body: SizedBox(
        height: AppSizes.screenHeight,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: AppSizes.h4),
                  child: OutlinedButton(
                      onPressed: () {
                        otpController.seconds.value = 120;
                        Get.back();
                        otpController.otpValues.value = ["", "", "", ""];
                      },
                      style: OutlinedButton.styleFrom(
                        shape: const CircleBorder(), // Circular shape
                        side: const BorderSide(
                            color: AppColors.blue2), // Border color
          
                        // Border color
                      ),
                      child: Image.asset(
                        AppImages.iconNext,
                        color: AppColors.blue,
                        height: 24,
                        width: 24,
                      )),
                ),
              ),
              Image.asset(
                AppImages.logo,
                height: AppSizes.h10,
                width: AppSizes.w30,
              ),
              Gap(AppSizes.h2),
              SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppSizes.w4),
                  child: Column(
                    children: [
                      Text(
                        AppStrings.otpHeading,
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(fontWeight: FontWeight.w800),
                      ),
                      Gap(AppSizes.h2 * 0.5),
                      Text(
                        textAlign: TextAlign.center,
                        'أدخل الرمز الذي وصلك على هاتفك المحمول لتأكيد حسابك',
                        style: context.bodyMedium,
                      ),
                      Gap(AppSizes.h2),
                      Obx(
                        () => Text(
                          textAlign: TextAlign.center,
                          otpController.formatTime(otpController.seconds.value),
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(fontWeight: FontWeight.w800),
                        ),
                      ),
                      // OTP Fields with GetX
                      Obx(() {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: List.generate(otpController.otpValues.length,
                              (index) {
                            return Container(
                              width: AppSizes.w12,
                              height: AppSizes.h6,
                              decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: AppColors.blue2, width: 1)),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                otpController.otpValues[index],
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(fontWeight: FontWeight.w800),
                              ),
                            );
                          }),
                        );
                      }),
                      Gap(AppSizes.h6),
                      // Custom Keyboard with GetX
                      CustomKeyboard(
                        onKeyTap: otpController.onKeyboardTap,
                        onBackspace: otpController.onBackspace,
                      ),
                    ],
                  ),
                ),
              ),
              Gap(AppSizes.h4),
              Text.rich(TextSpan(children: [
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
                    style: ThemeExtensions(context).bodyMedium?.copyWith(
                          fontWeight: FontWeight.w800,
                          decoration: TextDecoration.underline,
                        ))
              ])),
              Gap(AppSizes.h2),
              Image.asset(
                AppImages.graphicsOTP,
                width: AppSizes.screenWidth,
              )
            ],
          ),
        ),
      ),
    );
  }
}
