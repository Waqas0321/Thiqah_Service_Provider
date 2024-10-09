import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import '../../Controllers/drawer_controller.dart';
import '../../Routes/app_routes.dart';
import '../../Utils/Constants/app_colors.dart';
import '../../Utils/Constants/app_images.dart';
import '../../Utils/Constants/app_sizes.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    DrawerWidgetController _controller = Get.put(DrawerWidgetController());
    return SizedBox(
      height: AppSizes.screenHeight,
      child: Padding(
          padding: EdgeInsets.only(bottom: AppSizes.h8),
          child: Drawer(
            backgroundColor: AppColors.white,
            child: Padding(
              padding: EdgeInsets.only(right: AppSizes.w4),
              child: Column(
                children: [
                  Gap(AppSizes.h4),
                  ListTile(
                    trailing: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: CircleBorder(),
                      ),
                      onPressed: () {
                        Get.back();
                      },
                      child: Icon(
                        CupertinoIcons.multiply,
                        size: 32,
                        color: AppColors.blue,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Get.toNamed(AppRoutes.profilePage),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage(AppImages.profile),
                        ),
                        Gap(AppSizes.w2),
                        Text(
                          'سعد العبيدي',
                          style: Get.theme.textTheme.bodyMedium
                              ?.copyWith(fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(right: AppSizes.w16, top: AppSizes.h4),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(AppRoutes.putInformationPage);
                          },
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(9),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.blue,
                                ),
                                child: Image(
                                  image:
                                      AssetImage(AppImages.ph_list_plus_fill),
                                  height: AppSizes.h4,
                                  width: AppSizes.w6,
                                  color: AppColors.white,
                                ),
                              ),
                              Gap(AppSizes.w2),
                              Text('طلبات الخدمة',
                                  style: Get.theme.textTheme.bodySmall),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(9),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.blue,
                              ),
                              child: Image(
                                image: AssetImage(AppImages
                                    .arcticons_emoji_building_construction),
                                height: AppSizes.h4,
                                width: AppSizes.w6,
                                color: AppColors.white,
                              ),
                            ),
                            Gap(AppSizes.w2),
                            Text('عروض المشاريع',
                                style: Get.theme.textTheme.bodySmall),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Spacer(), // Pushes the button to the bottom
                  Padding(
                    padding:
                        EdgeInsets.only(left: AppSizes.w4, bottom: AppSizes.h4),
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(
                          color: AppColors.blue, // Set border color to blue
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Image(
                            image: AssetImage(AppImages.iconBack),
                            color: AppColors.blue,
                            height: 20,
                            width: 20,
                          ),
                          Gap(AppSizes.w2),
                          Text(
                            'الخروج من التطبيق',
                            style: Get.theme.textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
