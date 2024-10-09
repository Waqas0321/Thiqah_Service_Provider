import 'package:flutter/material.dart';
import 'package:thiqah_services_provider/App/Widgets/common/text_theme_extention.dart';
import '../../Utils/Constants/app_colors.dart';
import '../../Utils/Constants/app_images.dart';
import '../../Utils/Constants/app_sizes.dart';

class FilterContainer extends StatelessWidget {
  final String title;
  final Color backgroundColor, textColor, borderColor;
  const FilterContainer(
      {super.key,
      this.backgroundColor = AppColors.blue,
      this.textColor = AppColors.white,
      required this.title,
      this.borderColor = AppColors.stealBlue});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: backgroundColor,
          border: Border.all(color: borderColor)),
      child: Row(
        children: [
          Text(
            title,
            style: context.bodySmall!.copyWith(color: textColor),
          ),
          SizedBox(
            width: AppSizes.w2,
          ),
          Image.asset(AppImages.upDown,height: 18,width: 18,)
        ],
      ),
    );
  }
}
