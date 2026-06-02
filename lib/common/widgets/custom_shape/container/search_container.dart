import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SearchTextFiled extends StatelessWidget {
  const SearchTextFiled({
    super.key,
    required this.text,
    required this.showBgColor,
    this.icon = Iconsax.search_normal,
    this.iconColor,
    required this.showBorder,
  });
  final String text;
  final bool showBgColor, showBorder;
  final IconData? icon;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunction.isDarkMode(context);
    return Container(
      width: DeviceUtility.getScreenWith(context),
      padding: EdgeInsets.all(AppSizes.md),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
        border: showBorder ? Border.all(color: AppColors.grey) : null,
        color: showBgColor
            ? isDark
                  ? AppColors.dark
                  : AppColors.white
            : Colors.transparent,
      ),
      child: Row(
        children: [
          Icon(icon, color: iconColor, fontWeight: FontWeight.bold),
          const SizedBox(width: AppSizes.spaceBtwItems),
          Text(text, style: Theme.of(context).textTheme.bodySmall),
        ],
      ),
    );
  }
}