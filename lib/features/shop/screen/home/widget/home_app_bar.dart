import 'package:e_commerce_app/common/widgets/app_bar/app_bar.dart';
import 'package:e_commerce_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/text_string.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
    required this.isDark,
  });

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      action: [
        AppCartCounterIcon(
          onTap: () {},
          color: isDark ? AppColors.black : AppColors.white,
        ),
      ],
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TextString.homeAppbarTitle,
            style: Theme.of(
              context,
            ).textTheme.labelMedium!.apply(color: AppColors.grey),
          ),
          Text(
            TextString.homeAppbarSubTitle,
            style: Theme.of(context).textTheme.headlineSmall!
                .apply(color: AppColors.white),
          ),
        ],
      ),
    );
  }
}