import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thiqah_services_provider/App/Routes/app_routes.dart';
import 'package:thiqah_services_provider/App/Widgets/common/text_theme_extention.dart';

import '../../Utils/Constants/app_colors.dart';
import '../../Utils/Constants/app_images.dart';
import '../../Utils/Constants/app_sizes.dart';
import '../container/circular_container.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key,  this.isGoBack = false});
  final bool isGoBack;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Get.toNamed(AppRoutes.profilePage);
            },
            child: const CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(AppImages.profile),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "مرحباً",
                style: context.bodySmall!.copyWith(fontSize: 13),
              ),
              Text(
                "سعد العبيدي",
                style:
                    context.bodyMedium!.copyWith(fontWeight: FontWeight.bold),
              )
            ],
          ),
          const VerticalDivider(
            thickness: 1,
            width: 20,
            color: AppColors.beige,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Image.asset(
                    AppImages.location,
                    height: 15,
                    width: 15,
                  ),
                  SizedBox(
                    width: AppSizes.w2,
                  ),
                  Text(
                    "الجهراء،",
                    style: context.bodySmall!.copyWith(fontSize: 13),
                  ),
                ],
              ),
              Text(
                "الكويت",
                style:
                    context.bodyMedium!.copyWith(fontWeight: FontWeight.bold),
              )
            ],
          ),
          GestureDetector(
              onTap: () {
               isGoBack? Get.back():Scaffold.of(context).openDrawer();
              },
              child: !isGoBack? CustomCircularContainer(imagePath: AppImages.menu):CustomCircularContainer(imagePath: AppImages.iconNext)),
        ],
      ),
    );
  }
}
