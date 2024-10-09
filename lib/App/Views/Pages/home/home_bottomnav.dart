import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Controllers/bottomnave_controller.dart';
import '../../../Utils/Constants/app_colors.dart';
import '../../../Utils/Constants/app_images.dart';
import '../../../Widgets/Drawer/custom_drawer.dart';
import '../Add_Product/product_detail_page.dart';
import '../Notification/notification_page.dart';
import '../Project_proposal/quets_management_page.dart';
import 'home_page.dart'; // Import your controller

class HomeMainBottomNav extends StatelessWidget {
  HomeMainBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize the BottomNavController
    final BottomNavController bottomNavController = Get.put(BottomNavController());

    return Scaffold(
      drawer: CustomDrawer(),
      body: Stack(
        children: [
          Obx(() => _pages[bottomNavController.selectedIndex.value]),
          // Use Obx to listen to changes
          Positioned(
            bottom: 9,
            left: 16,
            right: 16,
            child: Container(
              height: 68,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xffFFFFFD),
                      Color(0xffFFFFFF),
                      Color(0xffFFFFFD),
                    ],
                    stops: [
                      0.6,
                      0.2,
                      0.9
                    ]),
              ),
              child: ClipRRect(
                clipBehavior: Clip.antiAlias,
                borderRadius: BorderRadius.circular(40),
                child: Obx(
                  () => BottomNavigationBar(
                    backgroundColor: Colors.transparent,
                    currentIndex: bottomNavController.selectedIndex.value,
                    showSelectedLabels: false,
                    showUnselectedLabels: false,
                    type: BottomNavigationBarType.fixed,
                    onTap: (index) {
                      bottomNavController
                          .changeIndex(index); // Change index in the controller
                    },
                    items: <BottomNavigationBarItem>[
                      BottomNavigationBarItem(
                        icon: bottomNavController.selectedIndex.value == 0
                            ? const SelectedIndexCustom(
                          iconPath: AppImages.bellIcon,
                        )
                            : const Image(
                          image: AssetImage(AppImages.bellIcon),
                          height: 24,
                          width: 24,
                          color: AppColors.blue,
                        ),
                        label: '',
                      ),
                      BottomNavigationBarItem(
                        icon: bottomNavController.selectedIndex.value == 1
                            ? const SelectedIndexCustom(
                                iconPath: AppImages.fourthIcon,
                              )
                            : const Image(
                                image: AssetImage(AppImages.fourthIcon),
                                height: 24,
                                width: 24,
                                color: AppColors.blue,
                              ),
                        label: '',
                      ),
                      BottomNavigationBarItem(
                        icon: bottomNavController.selectedIndex.value == 2
                            ? const SelectedIndexCustom(
                                iconPath: AppImages.secondIndexIcon,
                              )
                            : const Image(
                                image: AssetImage(AppImages.secondIndexIcon),
                                height: 24,
                                width: 24,
                                color: AppColors.blue,
                              ),
                        label: '',
                      ),
                      BottomNavigationBarItem(
                        icon: bottomNavController.selectedIndex.value == 3
                            ? const SelectedIndexCustom(
                                iconPath: AppImages.homeIcon,
                              )
                            : const Image(
                                image: AssetImage(AppImages.homeIcon),
                                height: 24,
                                width: 24,
                                color: AppColors.blue,
                              ),
                        label: '',
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  final List<Widget> _pages = [
    const NotificationPage(),
    const QuetsManagementPage(),
    const ProductDetailPage(),
    const HomePage(), // Actual Home Page
  ];
}

class SelectedIndexCustom extends StatelessWidget {
  const SelectedIndexCustom({
    super.key,
    required this.iconPath,
  });

  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(0),
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        color: AppColors.blue,
        borderRadius: BorderRadius.all(Radius.circular(100)),
      ),
      child: Image(
        image: AssetImage(iconPath),
        height: 17,
        width: 17,
        color: AppColors.beige, // Selected color change
      ),
    );
  }
}
