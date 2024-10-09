import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:thiqah_services_provider/App/Views/Pages/Add_Product/productAdd_complete_screen.dart';
import 'package:thiqah_services_provider/App/Widgets/common/text_theme_extention.dart';
import '../../../Controllers/product_detail_controller.dart';
import '../../../Routes/app_routes.dart';
import '../../../Utils/Constants/app_colors.dart';
import '../../../Utils/Constants/app_images.dart';
import '../../../Utils/Constants/app_sizes.dart';
import '../../../Utils/Constants/app_strings.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    ProductDetailsController controller = Get.put(ProductDetailsController());
    return Stack(children: [
      Positioned(
          bottom: -60,
          left: 0,
          right: 0,
          child: Image.asset(AppImages.graphicsLogin)),
      Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: SizedBox(
              height: AppSizes.screenHeight,
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppSizes.h2),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Gap(AppSizes.h4 * 1.4),
                          Image.asset(
                            AppImages.logo,
                            height: AppSizes.h10,
                            width: AppSizes.w30,
                          ),
                          Gap(AppSizes.h4),
                          Text('إضافة منتج جديد',
                              style: context.headlineMedium
                                  ?.copyWith(fontWeight: FontWeight.w700)),
                          Gap(AppSizes.h2 * 0.5),
                          Text('أضف خصائص المنتج للبيع',
                              style: context.bodyMedium),
                          Gap(AppSizes.h2),
                          TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'إسم المنتج',
                            ),
                          ),
                          Gap(AppSizes.h2),
                          TextFormField(
                            decoration: const InputDecoration(
                                hintText: 'نوع المنتج',
                                suffixIcon:
                                    Icon(CupertinoIcons.arrowtriangle_down)),
                          ),
                          Gap(AppSizes.h2),
                         Container(
                           width: double.infinity,
                           height: AppSizes.h16,
                           decoration: BoxDecoration(
                             border: Border.all(width: 1,color: AppColors.blue2),
                             borderRadius: BorderRadius.circular(9)
                           ),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             crossAxisAlignment: CrossAxisAlignment.center,
                             children: [
                               Icon(Icons.cloud_upload,color: AppColors.blue2,),
                               Text(
                                 AppStrings.logIn,
                                 style: Theme.of(context)
                                     .textTheme
                                     .bodySmall
                                     ?.copyWith(
                                     color: AppColors.blue2),
                               ),
                             ],
                           ),
                         ),
                          Gap(AppSizes.h2),
                          TextFormField(
                            maxLines: null,
                            minLines: 2,
                            decoration: const InputDecoration(
                              hintText: 'وصف المنتج',
                            ),
                          ),
                          Gap(AppSizes.h2),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                Get.to(ProductAddedCompleteScreen());
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
                          InkWell(
                            onTap: () {
                              Get.toNamed(AppRoutes.termsPlices);
                            },
                            child: Text.rich(TextSpan(children: [
                              TextSpan(
                                  text: AppStrings.notHaveAnAccount1,
                                  style: ThemeExtensions(context)
                                      .bodySmall
                                      ?.copyWith(
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
                          Gap(AppSizes.h8),
                        ],
                      ),
                    ),
                  ),
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
      )
    ]);
  }
}
