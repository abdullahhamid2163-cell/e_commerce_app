import 'package:e_commerce_app/features/authentication/screen/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/state_manager.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instane => Get.find();

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator(dynamic index) {
    currentPageIndex.value = index;
  }

  void dotNvigationClick(dynamic index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  void nextPage() {
    Get.to(LoginScreen());
  }

  void skipPage() {
    if (currentPageIndex.value == 2) {
      Get.to(LoginScreen());
    } else {
      int page = currentPageIndex.value + 2;
      pageController.jumpToPage(page);
    }
  }
}
