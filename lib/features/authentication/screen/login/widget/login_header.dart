import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_string.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunction.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 100,
          image: AssetImage(
            isDark ? AppImages.lightAppLogo : AppImages.darkAppLogo,
          ),
        ),
        const SizedBox(height: AppSizes.lg),
        Text(
          TextString.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: AppSizes.sm),
        Text(
          TextString.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        //SubTitle
      ],
    );
  }
}
