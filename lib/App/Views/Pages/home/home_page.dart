import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:thiqah_services_provider/App/Widgets/common/text_theme_extention.dart';
import '../../../Controllers/home_controller.dart';
import '../../../Routes/app_routes.dart';
import '../../../Utils/Constants/app_colors.dart';
import '../../../Utils/Constants/app_images.dart';
import '../../../Utils/Constants/app_sizes.dart';
import 'package:get/get.dart';

import '../../../Utils/Constants/app_strings.dart';
import '../../../Widgets/container/circular_column_container.dart';
import '../../../Widgets/container/custom_service_provider_container.dart';
import '../../../Widgets/container/filter_container.dart';
import '../../../Widgets/container/product_card.dart';
import '../../../Widgets/header/custom_header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    return Stack(
      children: [
        SafeArea(
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
                  Gap(AppSizes.h2),
                  SizedBox(
                    height: AppSizes.h12,
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: const ScrollPhysics(),
                      itemCount: 8,
                      itemBuilder: (itemBuilder, index) {
                        return const CircularColumnContainer(
                          imagePath: AppImages.building,
                          title: "بناء",
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return Gap(AppSizes.w2);
                      },
                    ),
                  ),
                  Gap(AppSizes.h2),
                  Row(
                    children: [
                      Text(
                        "قائمة المنتجات",
                        style: context.bodyLarge!
                            .copyWith(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      const Spacer(),
                      const FilterContainer(
                        title: "الأكثر تفاعلا",
                        textColor: AppColors.stealBlue,
                        backgroundColor: Colors.transparent,
                      ),
                      SizedBox(
                        width: AppSizes.w4,
                      ),
                      const FilterContainer(
                        title: "القريبة",
                      ),
                    ],
                  ),
                  Gap(
                    AppSizes.h2,
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Number of columns in the grid
                      crossAxisSpacing: 10.0, // Spacing between columns
                      mainAxisSpacing: 10.0, // Spacing between rows
                      childAspectRatio: 0.9, // Aspect ratio for each grid item
                    ),
                    itemCount: 8,
                    // Number of grid items
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          // Get.toNamed(AppRoutes.moreDetailsPage);
                        },
                        child: const ProductCard(
                          productTitle: AppStrings.productTilte,
                          productPrice: AppStrings.productPrice,
                          productImagePath: AppImages.product,
                        ),
                      );
                    },
                  ),

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
