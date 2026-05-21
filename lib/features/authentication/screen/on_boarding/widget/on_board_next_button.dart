import 'package:e_commerce_app/features/authentication/controllers/controllers.onboarding/on_boarding_controller.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunction.isDarkMode(context);
    return Positioned(
      right: AppSizes.defaultSpace,
      bottom: DeviceUtility.getBottomNavigationBarHeight(),
      child: InkWell(
        onTap: () => OnBoardingController.instance.nextPage(),
        child: Container(
          height: 50,
          width: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: isDark ? AppColors.prim : AppColors.dark,
          ),
          child: const Center(
            child: Text(
              'Get Started >>>',
              style: TextStyle(fontSize: 20, color: AppColors.light),
            ),
          ),
        ),
      ),
    );
  }
}
//isDark ? AppColors.dark : AppColors.light,