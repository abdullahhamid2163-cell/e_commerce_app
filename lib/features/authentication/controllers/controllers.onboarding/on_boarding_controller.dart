import 'package:flutter/material.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/state_manager.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instane => Get.find();

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;
  void updatePageIndicator(int index) {
    // Update the page indicator logic here
  }

  void dotNvigationClick(int index) {
    // Handle dot navigation logic here
  }

  void nextPage() {}

  void skipPage() {}
}
