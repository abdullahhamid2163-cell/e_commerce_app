import 'package:e_commerce_app/common/widgets/custom_shape/container/primary_header_container.dart';
import 'package:e_commerce_app/common/widgets/custom_shape/container/search_container.dart';
import 'package:e_commerce_app/common/widgets/products/products_cards/product_card_vertical.dart';
import 'package:e_commerce_app/common/widgets/text/text_heading.dart';
import 'package:e_commerce_app/features/shop/screen/home/widget/home_app_bar.dart';
import 'package:e_commerce_app/features/shop/screen/home/widget/home_categories.dart';
import 'package:e_commerce_app/features/shop/screen/home/widget/promo_slider.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunction.isDarkMode(context);
    return Scaffold(
      body: Column(
        children: [
          AppPrimaryHeaderContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeAppBar(isDark: isDark),
                const SizedBox(height: AppSizes.spaceBtwSections),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSizes.defaultSpace,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SearchTextFiled(
                        showBorder: true,
                        iconColor: AppColors.darkGrey,
                        showBgColor: true,
                        text: 'Search In Store',
                      ),
                      const SizedBox(height: AppSizes.spaceBtwSections),
                      TextHeading(
                        text: 'Popular Categories',
                        showActionButton: false,
                        textColor: isDark ? AppColors.white : AppColors.black,
                      ),
                      const SizedBox(height: AppSizes.spaceBtwItems),
                      const HomeCategories(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(0.3 * AppSizes.defaultSpace),
                child: Column(
                  children: [
                    const AppPromoSlider(
                      banner: [
                        AppImages.banner1,
                        AppImages.banner2,
                        AppImages.banner3,
                        AppImages.banner4,
                        AppImages.banner5,
                      ],
                    ),
                    const SizedBox(height: AppSizes.spaceBtwSections),
                    const ProductCardVertical(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
