import 'package:gap/gap.dart';
import '../../../Utils/Constants/app_colors.dart';
import '../../../Utils/Constants/app_images.dart';
import '../../../Utils/Constants/app_sizes.dart';
import '../../../Widgets/Button/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Widgets/common/text_theme_extention.dart';
import '../../../widgets/container/filter_container.dart';
class heaerPage extends StatelessWidget {
  const heaerPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: const DecorationImage(
              image: AssetImage(AppImages.product), fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: AppSizes.screenWidth,
            height: AppSizes.h22,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12)),
                gradient: LinearGradient(
                    begin: Alignment.topCenter, // Starts from the top
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF21395D),
                      Color(0x4C4E61BD),
                      Color(0x276078EC),
                      Color(0x5F5F6FA),
                    ],
                    stops: [
                      0.3,
                      0.6,
                      0.8,
                      0.999
                    ])),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Gap(AppSizes.w10),
                      Text(
                        '   مصابيح سقف مودرن',
                        style: ThemeExtensions(context)
                            .bodyLarge
                            ?.copyWith(
                            color: AppColors.white,
                            fontWeight: FontWeight.w800),
                      ),
                      ElevatedButton(
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
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '125 د.ك.',
                        style: ThemeExtensions(context)
                            .bodyMedium
                            ?.copyWith(color: AppColors.white),
                      ),
                      Gap(AppSizes.w2),
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                              color: Colors
                                  .white), // Set border color to white
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.shopping_cart_outlined,
                              color: AppColors.white,
                              size: 12,
                            ),
                            Gap(
                              AppSizes.w2 * 0.5,
                            ),
                            Text(
                              'أضف إلى السلة',
                              style: ThemeExtensions(context)
                                  .bodyMedium
                                  ?.copyWith(color: AppColors.white),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            width: AppSizes.screenWidth,
            height: AppSizes.h20,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12)),
              gradient: AppColors.whiteGradient,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: AppSizes.h2 * 0.8),
                        child: Container(
                          height: AppSizes.h6,
                          width: AppSizes.w14,
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              shape: BoxShape.circle),
                          child: Image(
                            image: AssetImage(AppImages.aweber_logo),
                            height: 31,
                            width: 31,
                          ),
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
                          Gap(AppSizes.h2),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                      height: AppSizes.h6 * 1.2,
                      child: VerticalDivider(
                        thickness: 0.5,
                      )),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
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
                      Gap(AppSizes.h2 * 0.3),
                      Row(
                        children: [
                          CustomButtom(text: 'البناء',),
                          Gap(AppSizes.w2),
                          CustomButtom(text: 'التشطيب',),

                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}