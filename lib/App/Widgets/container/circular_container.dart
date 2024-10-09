import 'package:flutter/material.dart';

import '../../Utils/Constants/app_colors.dart';

class CustomCircularContainer extends StatelessWidget {
  final String imagePath;
  const CustomCircularContainer({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        shape: BoxShape.circle, // Makes the container circular
        border: Border.all(
          color: AppColors.beige, // Border color (Beige)
          width: 1.0, // Border width
        ),
      ),
      child: Image.asset(imagePath,height: 15,width: 15,),
    );
  }
}
