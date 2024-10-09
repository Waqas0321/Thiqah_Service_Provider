import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:thiqah_services_provider/App/Widgets/common/text_theme_extention.dart';

import '../../Utils/Constants/app_colors.dart';
import '../../Utils/Constants/app_sizes.dart';
class customButtonContainer extends StatelessWidget {
  const customButtonContainer({
    super.key, this.isGreen = true,
  });
  final bool isGreen;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4,horizontal: 9),
      decoration: BoxDecoration(
          color: AppColors.white, borderRadius: BorderRadius.circular(32),
          border: Border.all(color: AppColors.blue2,width: 0.5)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.circle,
            size: 10,
            color:isGreen? AppColors.green: AppColors.yellow,
          ),
          Gap(AppSizes.w2),
          Text(
            'مفتوح',
            style: context.bodyMedium,
          ),
        ],
      ),
    );
  }
}