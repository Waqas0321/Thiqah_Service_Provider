import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:thiqah_services_provider/App/Widgets/common/text_theme_extention.dart';
import '../../../Controllers/notification_controller.dart';
import '../../../Utils/Constants/app_colors.dart';
import '../../../Utils/Constants/app_images.dart';
import '../../../Utils/Constants/app_sizes.dart';
import '../../../Utils/Constants/app_strings.dart';
import '../../../Widgets/Button/custom_button.dart';
import '../../../Widgets/header/custom_header.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    NotificationController controller = Get.put(NotificationController());
    return Stack(
      children: [
        SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
                left: AppSizes.w4, right: AppSizes.w4, bottom: AppSizes.h10),
            child: SizedBox(
              height: AppSizes.screenHeight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap(AppSizes.h2),
                  CustomHeader(),
                  Gap(AppSizes.h2),
                  TextField(
                    decoration: InputDecoration(
                        hintText: AppStrings.homeSearchHint,
                        suffixIcon: const Icon(Icons.search)),
                  ),
                  Gap(AppSizes.h4),
                  Text(
                    'التنبيهات',
                    style: context.bodyLarge
                        ?.copyWith(fontWeight: FontWeight.w900),
                  ),
                  Text(
                    'آخر تنبيهات التطبيق',
                    style: context.bodyMedium,
                  ),
                  Gap(AppSizes.h2),
                  ListView.separated(
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return CustomNotificationContainer();
                    },
                    separatorBuilder: (context, index) {
                      return Gap(AppSizes.h2 * 0.5);
                    },
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(AppImages.graphicsOTP))
      ],
    );
  }
}

class CustomNotificationContainer extends StatelessWidget {
  const CustomNotificationContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppSizes.w2),
      width: AppSizes.screenWidth,
      decoration: BoxDecoration(
          color: AppColors.stealBlue,
          borderRadius: BorderRadius.circular(9)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('12.08.2024',style: context.bodySmall?.copyWith(color: AppColors.blue2)),
          Gap(AppSizes.h2 * 0.01),
          Text.rich(
            TextSpan(children: [
              TextSpan(
                text: 'أيمن عزيز',
                style: context.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w900,
                  decoration: TextDecoration.underline,
                ),
              ),
              TextSpan(
                text: ' أرسل عرض جديد بخصوص ',
                style: context.bodyMedium,
              ),
              TextSpan(
                text: 'مشروع بناء فيل',
                style: context.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w900,
                  decoration: TextDecoration.underline,
                ),
              ),
            ]),
          ),
          Gap(AppSizes.h2* 0.4),
          Row(
            children: [
              SizedBox(
                  height: AppSizes.h4,
                  child: CustomButtom(text: 'عرض')),
              SizedBox(
                  height: AppSizes.h4,
                  child: VerticalDivider(
                    thickness: 0.5,
                  )),
              SizedBox(
                  height: AppSizes.h4,
                  child: CustomButtom(text: 'إلغاء')),
            ],
          )
        ],
      ),
    );
  }
}
