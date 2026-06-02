import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_app/common/widgets/custom_shape/container/circular_container.dart';
import 'package:e_commerce_app/common/widgets/images/app_rounded_image.dart';
import 'package:e_commerce_app/features/shop/controllers/home_controller.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppPromoSlider extends StatelessWidget {
  const AppPromoSlider({super.key, required this.banner});

  final List<String> banner;

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunction.isDarkMode(context);
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          items: banner
              .map(
                (url) => AppRoundedImage(
                  bord: Border.all(
                    color: isDark ? AppColors.white : AppColors.black,
                    width: 2,
                  ),
                  imageUrl: url,
                  fit: BoxFit.cover,
                ),
              )
              .toList(),
          options: CarouselOptions(
            autoPlay: true, // 1. Enable auto scroll
            autoPlayInterval: const Duration(
              seconds: 3,
            ), // 2. Time between transitions
            autoPlayAnimationDuration: const Duration(
              milliseconds: 800,
            ), // 3. Slide speed
            autoPlayCurve: Curves.fastOutSlowIn, // 4. Animation style
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
            viewportFraction: 1,
          ),
        ),
        const SizedBox(height: AppSizes.spaceBtwSections),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < banner.length; i++)
                AppCircularContainer(
                  hight: 4,
                  width: 20,
                  margin: EdgeInsets.only(right: 10),
                  bgColor: controller.corousalCurrentIndex.value == i
                      ? AppColors.prim
                      : AppColors.grey,
                ),
            ],
          ),
        ),
      ],
    );
  }
}
