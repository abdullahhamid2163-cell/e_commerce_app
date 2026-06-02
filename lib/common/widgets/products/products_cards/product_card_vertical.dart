import 'package:e_commerce_app/common/widgets/custom_shape/container/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/images/app_rounded_image.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/shadows.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunction.isDarkMode(context);
    return Container(
      width: 200,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [AppShadows.verticalProductShadow],
        borderRadius: BorderRadius.circular(AppSizes.productImageRadius),
        color: isDark ? AppColors.darkGrey : AppColors.white,
      ),
      child: Column(
        children: [
          AppRoundedContainer(
            height: 180,
            padding: EdgeInsets.all(AppSizes.sm),
            bgColor: isDark ? AppColors.dark : AppColors.light,
            child: Stack(
              children: [AppRoundedImage(imageUrl: AppImages.product1)],
            ),
          ),
        ],
      ),
    );
  }
}
