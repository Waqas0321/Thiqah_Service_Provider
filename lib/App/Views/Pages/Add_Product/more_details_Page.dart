import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import '../../../Controllers/more_details_page_controller.dart';
import '../../../Widgets/common/text_theme_extention.dart';
import '../../../Utils/Constants/app_colors.dart';
import '../../../Utils/Constants/app_images.dart';
import '../../../Utils/Constants/app_sizes.dart';
import '../../../Widgets/container/circular_column_container.dart';
import 'header.dart';


class MoreDetailsPage extends StatelessWidget {
  const MoreDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    MoredetailsPageController controller = Get.put(MoredetailsPageController());
    return Scaffold(
      body: Stack(
        children: [
          // Column(
          //
          //   children: [
          //     heaerPage(),
          //     Gap(AppSizes.h2),
          //     Padding(
          //       padding: EdgeInsets.symmetric(horizontal: AppSizes.w2),
          //       child: SizedBox(
          //         height: AppSizes.h8,
          //         child: ListView.separated(
          //           shrinkWrap: true,
          //           scrollDirection: Axis.horizontal,
          //           physics: const ScrollPhysics(),
          //           itemCount: 8,
          //           itemBuilder: (itemBuilder, index) {
          //             return Container(
          //               height: AppSizes.h8,
          //               width: AppSizes.w20,
          //               clipBehavior: Clip.antiAlias,
          //               decoration: BoxDecoration(
          //                 image: DecorationImage(
          //                   image: AssetImage(AppImages.product),
          //                   fit: BoxFit.cover, // Ensures the image fits the container properly
          //                 ),
          //                 borderRadius: BorderRadius.circular(8),  // Set border radius
          //               ),
          //             );
          //           },
          //           separatorBuilder: (BuildContext context, int index) {
          //             return Gap(AppSizes.w2);
          //           },
          //         ),
          //       ),
          //     ),
          //     Gap(AppSizes.h2),
          //     Padding(
          //       padding:EdgeInsets.symmetric(horizontal: AppSizes.w2),
          //       child: SingleChildScrollView(
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             Text(
          //               'وصف المنتج',
          //               style: ThemeExtensions(context)
          //                   .bodyLarge
          //                   ?.copyWith(
          //                   fontWeight: FontWeight.w800),
          //             ),
          //             Text(
          //               'تعتبر مصابيح سقف مودرن من أهم عناصر التصميم المعاصرة تعتبر مصابيح  مودرن من أهم  التصميم المعاصرة تعتبر مصابيح سقف مودرن من  عناصر التصميم المعاصرة تعتبر مصابيح سقف مودرن من أهم عناصر  المعاصرة تعتبر مصابيح سقف مودرن من أهم عناصر التصميم المعاصرة تعتبر مصابيح  مودرن من أهم  التصميم المعاصرة تعتبر مصابيح سقف مودرن من  عناصر التصميم المعاصرة تعتبر مصابيح سقف مودرن من أهم عناصر  المعاصرة. ',
          //               style: ThemeExtensions(context)
          //                   .bodySmall,
          //             ),
          //             Gap(AppSizes.h2),
          //             Padding(
          //               padding:EdgeInsets.symmetric(horizontal: AppSizes.w2),
          //               child: Row(
          //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                 children: [
          //                   SizedBox(
          //                     child: Row(
          //                       children: [
          //                         Icon(
          //                           Icons.star_border,
          //                           color: AppColors.blue,
          //                           size: AppSizes.w4 * 1.2,
          //                         ),
          //                         Gap(AppSizes.w2),
          //                         Text(
          //                           "5.0",
          //                           style: Theme.of(context)
          //                               .textTheme
          //                               .bodySmall
          //                               ?.copyWith(fontWeight: FontWeight.w900),
          //                         ),
          //                       ],
          //                     ),
          //                   ),
          //                   SizedBox(
          //                       height: AppSizes.h4,
          //                       child: VerticalDivider(
          //                         thickness: 0.5,
          //                       )),
          //                   SizedBox(
          //                     child: Row(
          //                       children: [
          //                         Gap(AppSizes.w2),
          //                         Text(
          //                           "125 د.ك.",
          //                           style: Theme.of(context)
          //                               .textTheme
          //                               .bodySmall
          //                               ?.copyWith(fontWeight: FontWeight.w900),
          //                         ),
          //                       ],
          //                     ),
          //                   ),
          //                   SizedBox(
          //                     child: Row(
          //                       children: [
          //                         OutlinedButton(
          //                           onPressed: () {},
          //                           style: OutlinedButton.styleFrom(
          //                             side: const BorderSide(
          //                                 color: AppColors.blue), // Set border color to white
          //                           ),
          //                           child: Row(
          //                             children: [
          //                               const Icon(
          //                                 Icons.shopping_cart_outlined,
          //                                 color: AppColors.blue,
          //                                 size: 12,
          //                               ),
          //                               Gap(
          //                                 AppSizes.w2 * 0.5,
          //                               ),
          //                               Text(
          //                                 'أضف إلى السلة',
          //                                 style: ThemeExtensions(context)
          //                                     .bodyMedium
          //                                     ?.copyWith(color: AppColors.blue),
          //                               ),
          //                             ],
          //                           ),
          //                         )
          //                       ],
          //                     ),
          //                   ),
          //
          //                 ],
          //               ),
          //             )
          //           ],
          //         ),
          //       ),
          //     )
          //
          //   ],
          // ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Image.asset(AppImages.graphicsOTP))
        ],
      ),
    );
  }
}




