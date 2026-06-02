import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class AppVerticalImage extends StatelessWidget {
  const AppVerticalImage({
    super.key,
    this.textColor,
    this.bgColor,
    this.onTap,
    required this.text,
    required this.image,
  });

  final Color? textColor;
  final Color? bgColor;
  final VoidCallback? onTap;
  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunction.isDarkMode(context);
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: AppSizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 55,
              height: 55,
              padding: const EdgeInsets.all(AppSizes.sm),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),

                color: isDark ? AppColors.dark : AppColors.white,
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  height: 30,
                  color: isDark ? AppColors.white : AppColors.black,
                ),
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwItems / 2),
            SizedBox(
              width: 55,
              child: Text(
                text,
                maxLines: 1,
                style: Theme.of(context).textTheme.labelLarge!.apply(
                  color: textColor ?? AppColors.white,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
