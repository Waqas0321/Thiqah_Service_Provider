import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:thiqah_services_provider/App/Views/Pages/Project_proposal/submit_proposal_screen.dart';
import 'package:thiqah_services_provider/App/Widgets/common/text_theme_extention.dart';
import '../../../Controllers/quets_management_controller.dart';
import '../../../Utils/Constants/app_colors.dart';
import '../../../Utils/Constants/app_images.dart';
import '../../../Utils/Constants/app_sizes.dart';
import '../../../Utils/Constants/app_strings.dart';
import '../../../Widgets/container/customButton_container.dart';
import '../../../Widgets/header/custom_header.dart';
class QuetsManagementPage extends StatefulWidget {
  const QuetsManagementPage({super.key});

  @override
  State<QuetsManagementPage> createState() => _QuetsManagementPageState();
}

class _QuetsManagementPageState extends State<QuetsManagementPage> {
  late bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    QuetsManagementController controller = Get.put(QuetsManagementController());
    return Stack(
      children: [
        SizedBox(
          height: AppSizes.screenHeight,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(
                    left: AppSizes.w4, right: AppSizes.w4, bottom: AppSizes.h10),
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
                      'طلبات أسعار المشاريع',
                      style: context.bodyLarge
                          ?.copyWith(fontWeight: FontWeight.w900),
                    ),
                    Text(
                      'طلبات أسعار المشاريع الخاصة بعملاء التطبيق',
                      style: context.bodyMedium,
                    ),
                    Gap(AppSizes.h4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        customButtonContainer(),
                        Gap(AppSizes.w2),
                        customButtonContainer(isGreen: false,),
                      ],
                    ),
                    Gap(AppSizes.h2),
                    ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return InkWell(
                            onTap: () {
                              setState(() {
                                isExpanded = !isExpanded;
                              });

                            },
                            child: CustomContainer(isExpanded: isExpanded,));
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

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key, this.isExpanded = false,
  });
  final bool isExpanded;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppSizes.w2),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.stealBlue,
        borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('12.08.2024',style: context.bodySmall?.copyWith(color: AppColors.blue2),),
          Gap(AppSizes.h2 * 0.4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius:23,
                backgroundImage:  AssetImage(AppImages.profile),
              ),
              Gap(AppSizes.w4),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('سعد العبيدي',style: context.bodySmall?.copyWith(fontWeight: FontWeight.w900),),
                  Text('مشروع بناء فيلا',style: context.bodySmall,),
                ],
              ),
              Gap(AppSizes.w4),
              SizedBox(
                  height: AppSizes.h4,
                  child: VerticalDivider(thickness: 0.5,color: AppColors.blue2,)),
              Gap(AppSizes.w4),
              Text('بناء كليا',style: context.bodySmall,),
              Gap(AppSizes.w4),
              customButtonContainer(),
            ],
          ),

          
         isExpanded? Padding(
            padding: EdgeInsets.only(right: AppSizes.w4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(AppSizes.h2),
                Row(
                  children: [
                    Icon(Icons.location_on_outlined,size: 18,color: AppColors.blue,),
                    Gap(AppSizes.w2 * 0.5),
                    Text('العنوان',style: context.bodySmall?.copyWith(fontWeight: FontWeight.w900),),
                    Gap(AppSizes.w2),
                    Text('شارع دعبل الخزاعي، الجهراء، الكويت',style: context.bodySmall,),
                  ],
                ),
                Gap(AppSizes.h2 * 0.5),
                Row(
                  children: [
                    Icon(CupertinoIcons.fullscreen,size: 18,color: AppColors.blue,),
                    Gap(AppSizes.w2 * 0.5),
                    Text('المساحة',style: context.bodySmall?.copyWith(fontWeight: FontWeight.w900),),
                    Gap(AppSizes.w2),
                    Text('شارع دعبل الخزاعي، الجهراء، الكويت',style: context.bodySmall,),
                  ],
                ),
                Gap(AppSizes.h2),
                Text('وصف الطلب',style: context.bodyMedium?.copyWith(fontWeight: FontWeight.w900),),
                Text('مشروع بناء فيلا من ثلاث طوابق مرحلة البناء مشروع بناء فيلا من ثلاث طوابق مرحلة البناء مشروع بناء فيلا من ثلاث طوابق مرحلة البناء مشروع بناء فيلا من ثلاث طوابق مرحلة البناء.',style: context.bodyMedium,),
             Gap(AppSizes.h2),
                OutlinedButton(onPressed: () {

                }, child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: AssetImage(AppImages.ph_list_plus_fill),height: 22,width: 22,),
                    Gap(AppSizes.w2),
                    Text('تحميل تصميم المشروع',style: context.bodyMedium),
                  ],
                )),
                Gap(AppSizes.h2),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: () {
                    Get.to(SubmitProposalScreen());
                  }, child: Text('تحميل تصميم المشروع')),
                ),
              ],
            ),
          ):SizedBox.shrink()
        ],
      ),
    );
  }
}
