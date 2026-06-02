import 'package:get/get.dart';

class HomeController extends GetxController{
  static HomeController get instance => Get.find();

  final corousalCurrentIndex = 0.obs;

  void updatePageIndicator(int index){
    corousalCurrentIndex.value = index;
  }
}