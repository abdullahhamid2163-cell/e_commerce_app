import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingNavigationButton extends StatelessWidget {
  const OnBoardingNavigationButton({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunction.isDarkMode(context);
    return Positioned(
      right: AppSizes.defaultSpace,
      bottom: DeviceUtility.getBottomNavigationBarHeight(),
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
            color: isDark ? AppColors.prim : AppColors.dark,
          ),
          child: Icon(
            Iconsax.arrow_right_3,
            color: isDark ? AppColors.dark : AppColors.light,
            fontWeight: FontWeight.bold,
            //size: 40,
          ),
        ),
      ),
    );
  }
}
