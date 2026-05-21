import 'package:e_commerce_app/features/authentication/controllers/controllers.onboarding/on_boarding_controller.dart';
import 'package:e_commerce_app/features/authentication/screen/on_boarding/widget/on_board_next_button.dart';
import 'package:e_commerce_app/features/authentication/screen/on_boarding/widget/on_boarding_dots.dart';
import 'package:e_commerce_app/features/authentication/screen/on_boarding/widget/on_boarding_page.dart';
import 'package:e_commerce_app/features/authentication/screen/on_boarding/widget/on_boarding_skip.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardScreen extends StatelessWidget {
  const OnBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: controller.updatePageIndicator,
            controller: controller.pageController,
            children: [
              const OnBoardingPage(
                title: TextString.onBoardingTitle1,
                image: AppImages.onBoardingImage1,
                subtitle: TextString.onBoardingSubTitle1,
              ),
              const OnBoardingPage(
                title: TextString.onBoardingTitle2,
                image: AppImages.onBoardingImage2,
                subtitle: TextString.onBoardingSubTitle2,
              ),
              const OnBoardingPage(
                title: TextString.onBoardingTitle3,
                image: AppImages.onBoardingImage1,
                subtitle: TextString.onBoardingSubTitle3,
              ),
            ],
          ),
          const OnBoardingSkip(),

          const OnBoardingDots(),

          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
