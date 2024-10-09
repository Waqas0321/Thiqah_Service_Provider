import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:thiqah_services_provider/App/Routes/app_routes.dart';
import 'package:thiqah_services_provider/App/Widgets/Button/custom_button.dart';
import '../../../Controllers/profile_controller.dart';
import '../../../Utils/Constants/app_colors.dart';
import '../../../Utils/Constants/app_images.dart';
import '../../../Utils/Constants/app_sizes.dart';
import '../../../Widgets/common/text_theme_extention.dart';
import '../../../Widgets/container/custom_service_provider.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileController controller = Get.put(ProfileController());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Image(
                    image: AssetImage(AppImages.graphicsOTP),
                    width: AppSizes.screenWidth,
                  )),
              Padding(
                padding: EdgeInsets.only(left: AppSizes.w2,right:AppSizes.w2,bottom: AppSizes.h10 ),
                child: Column(
                  children: [
                    Gap(AppSizes.h2),
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(AppImages.profile),
                      child: CustomEditButton(),
                    ),
                    Gap(AppSizes.h2 * 1.5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'سعد العبيدي',
                          style: ThemeExtensions(context)
                              .bodyLarge
                              ?.copyWith(
                              fontWeight: FontWeight.w800),
                        ),
                        Gap(AppSizes.w2),
                        CustomEditButton(borderColor: AppColors.blue2,iconColor: AppColors.blue,)
                      ],
                    ),
                    Gap(AppSizes.h4),
                    SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.only(right: AppSizes.w4),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'معلومات شخصية',
                              style: ThemeExtensions(context)
                                  .bodyLarge
                                  ?.copyWith(
                                  fontWeight: FontWeight.w800),
                            ),
                            Gap(AppSizes.h4),
                            CustomRow(text1: 'رقم الهاتف',text2: '+965 675 9876',),
                            Gap(AppSizes.h2),
                            CustomRow(text1: 'رقم الهاتف',text2: 's.laabidi@gmail.com',),
                            Gap(AppSizes.h2),
                            CustomRow(text1: 'الايميل',text2: '**********',),
                            Gap(AppSizes.h4),


                          ],
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text(
                          'تاريخ الطلبات',
                          style: ThemeExtensions(context)
                              .bodyLarge
                              ?.copyWith(
                              fontWeight: FontWeight.w800),
                        ),
                        Gap(AppSizes.h2),
                        Container(
                            padding: EdgeInsets.symmetric(vertical: 18,horizontal: 23),
                            decoration: BoxDecoration(
                              color: AppColors.stealBlue,
                              borderRadius: BorderRadius.circular(9),
                            ),
                            child: CustomRow(hasThreeColumn: false,text1: 'تصليح أو تركيب مصباح',text2: '125 د.ك.',)),
                        Gap(AppSizes.h2),
                        Container(
                            padding: EdgeInsets.symmetric(vertical: 18,horizontal: 23),
                            decoration: BoxDecoration(
                              color: AppColors.stealBlue,
                              borderRadius: BorderRadius.circular(9),
                            ),
                            child: CustomRow(hasThreeColumn: false,text1: 'إصلاح دارة أو تماس كهربائي',text2: '125 د.ك.',)),

                        Gap(AppSizes.h2),
                        Text(
                          'معلومات شخصية',
                          style: ThemeExtensions(context)
                              .bodyLarge
                              ?.copyWith(
                              fontWeight: FontWeight.w800),
                        ),
                        Gap(AppSizes.h2* 0.5),
                        TextFormField(

                          decoration: InputDecoration(
                              hintText: 'إضفة خدمة جديدة',
                              contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 8)
                          ),

                        ),
                        Gap(AppSizes.h2 * 0.5),
                        Row(
                          children: [
                            CustomButtom(text: 'كهرباء عامة',withCross: true,),
                            Gap(AppSizes.w2),
                            CustomButtom(text: 'كهرباء المنازل',withCross: true,),
                          ],
                        ),
                        Gap(AppSizes.h2 * 0.5),
                        Text(
                          'المشاريع التي شاركت في إنجازها',
                          style: ThemeExtensions(context)
                              .bodyLarge
                              ?.copyWith(
                              fontWeight: FontWeight.w800),
                        ),
                        Gap(AppSizes.h2 * 0.5),
                        ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            return CustomAddProjectContainer();
                          }, separatorBuilder: (BuildContext context, int index) { return Gap(AppSizes.h2); },),
                        Gap(AppSizes.h4),
                        OutlinedButton(onPressed: () {
                          Get.toNamed(AppRoutes.homeBottomNave);

                        }, child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: AssetImage(AppImages.ph_list_plus_fill),height: 22,width: 22,),
                            Gap(AppSizes.w2),
                            Text(
                              'أطلب خدمة',
                              style: ThemeExtensions(context)
                                  .bodyMedium,
                            ),
                          ],
                        )),
                      ],
                    )
          
                  ],
                ),
              ),
              Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Image(
                    image: AssetImage(AppImages.grapchicProfile),
                    width: AppSizes.screenWidth,
                  )),
              Positioned(
                  top: 20,
                  left: 10,
                  child: ElevatedButton(
                      style: OutlinedButton.styleFrom(shape: CircleBorder(),backgroundColor: AppColors.white),
                      onPressed: () {
                        Get.back();
                      },
                      child: Image(
                        image: AssetImage(AppImages.iconNext),
                        height: AppSizes.h4,
                        width: AppSizes.w6,
                      ))),
          
          
            ],
          ),
        ),
      ),
    );
  }
}

class CustomRow extends StatelessWidget {
  const CustomRow({
    super.key, this.hasThreeColumn = true, required this.text1, required this.text2,
  });
  final bool hasThreeColumn;
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: hasThreeColumn? MainAxisAlignment.start: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1,
          style: ThemeExtensions(context)
              .bodyMedium,
        ),
        Gap(AppSizes.w4),
        SizedBox(
            height: AppSizes.h2 * 1.5,
            child: VerticalDivider(thickness: 0.5,)),
        Gap(AppSizes.w4),
        Text(
          text2,
          style: ThemeExtensions(context)
              .bodyMedium
              ?.copyWith(
              fontWeight: FontWeight.w800),
        ),
       hasThreeColumn? Gap(AppSizes.w6): SizedBox.shrink(),
       hasThreeColumn? CustomEditButton(borderColor: AppColors.blue2,iconColor: AppColors.blue,): SizedBox.shrink(),
      ],
    );
  }
}

class CustomEditButton extends StatelessWidget {
 CustomEditButton({
    super.key,
    this.borderColor = AppColors.transparentwhite,
    this.iconColor = AppColors.white,
  });
  final Color borderColor;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: AppColors.transparentwhite,
          shape: BoxShape.circle,
          border: Border.all(color: borderColor,width: 1)
        ),
        child: Icon(Icons.edit,color: iconColor,size: 19,));
  }
}
