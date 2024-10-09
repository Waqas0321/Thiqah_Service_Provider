import 'package:flutter/material.dart';
import 'package:thiqah_services_provider/App/Widgets/common/text_theme_extention.dart';

import '../../Utils/Constants/app_colors.dart';
import '../../Utils/Constants/app_images.dart';

class CircularColumnContainer extends StatelessWidget {
  final String imagePath;
  final String title;
  const CircularColumnContainer(
      {super.key, required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration:
          const BoxDecoration(shape: BoxShape.circle, color: AppColors.beige),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(AppImages.building,height: 24,width: 24,),
            Text(
              title,
              style: context.bodyMedium,
            )
          ],
        ),
      ),
    );
  }
}

