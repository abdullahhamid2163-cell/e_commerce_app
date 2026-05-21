import 'package:e_commerce_app/features/authentication/controllers/controllers.onboarding/on_boarding_controller.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: AppSizes.defaultSpace,
      top: DeviceUtility.getAppBarHeight(),
      child: TextButton(
        child: const Text("Skip"),
        onPressed: () => OnBoardingController.instane.skipPage(),
      ),
    );
  }
}