import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:thiqah_services_provider/App/Views/Pages/Project_proposal/proposal_submitted_page.dart';
import 'package:thiqah_services_provider/App/Widgets/common/text_theme_extention.dart';

import '../../../Routes/app_routes.dart';
import '../../../Utils/Constants/app_colors.dart';
import '../../../Utils/Constants/app_images.dart';
import '../../../Utils/Constants/app_sizes.dart';
import '../../../Utils/Constants/app_strings.dart';
class SubmitProposalScreen extends StatelessWidget {
  const SubmitProposalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSizes.h2),
              child: Column(
                children: [
                  Gap(AppSizes.h4 * 1.4),
                  Image.asset(AppImages.logo,height: AppSizes.h10,width: AppSizes.w30,),
                  Gap(AppSizes.h2 * 0.5),
                  Text(
                    'إيداع عرض للمشروع',
                    style: context.headlineMedium,
                  ),
                  Gap(AppSizes.h2 * 0.5),
                  Text.rich(TextSpan(children: [
                    TextSpan(
                        text: 'إيداع عرض للمشروع : ',
                        style: ThemeExtensions(context).bodyMedium),
                    TextSpan(
                        text: 'بناء فيلا',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(fontWeight: FontWeight.w800))
                  ])),
                  Gap(AppSizes.h2),
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: 'مدة إنجاز المشروع',
                        suffixIcon: Icon(Icons.calendar_today)),
                  ),
                  Gap(AppSizes.h2 * 0.5),
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: 'تحميل ملف إنجاز المشروع',
                        suffixIcon: Icon(Icons.cloud_upload_sharp)),
                  ),
                  Gap(AppSizes.h2 * 0.5),
                  TextFormField(
                    minLines: 2,
                    maxLines: null,
                    decoration: const InputDecoration(
                        hintText: 'أضف ملاحظة',
                        ),
                  ),
                  Gap(AppSizes.h2),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {

                        Get.to(ProposalSubmittedPage());
                      },
                      child: Text(
                        'إيداع العرض',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(
                            fontWeight: FontWeight.w800,
                            color: AppColors.beige),
                      ),
                    ),
                  ),
                  Gap(AppSizes.h16),
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
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Image.asset(
                AppImages.graphicsLogin,
                width: AppSizes.screenWidth,
              ),
            )
          ],
        ),
      ),
    );
  }
}
