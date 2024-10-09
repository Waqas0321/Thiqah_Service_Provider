import 'package:flutter/material.dart';
import '../../Utils/Constants/app_colors.dart';
import '../../Utils/Constants/app_sizes.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {super.key,
      required this.productTitle,
      required this.productPrice,
      required this.productImagePath});
  final String productTitle;
  final String productPrice;
  final String productImagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
              image: AssetImage(productImagePath), fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: AppSizes.h10,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12)),
                gradient: AppColors.blueGradient),
          ),
          Container(
            width: AppSizes.w100 * 2,
            height: AppSizes.h10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12)),
              gradient: AppColors.whiteGradient,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productTitle,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(fontWeight: FontWeight.w900),
                  ),
                  Text(
                    productPrice,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
