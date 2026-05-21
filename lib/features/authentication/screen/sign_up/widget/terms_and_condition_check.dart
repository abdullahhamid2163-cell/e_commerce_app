import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_string.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TermsAndConditionCheck extends StatelessWidget {
  const TermsAndConditionCheck({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunction.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          height: 24,
          width: 24,
          child: Checkbox(value: false, onChanged: (valuue) {}),
        ),
        const SizedBox(width: AppSizes.spaceBtwItems),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: TextString.iagreeTo,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                TextSpan(
                  text: TextString.privacyPolicy,
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                    decoration: TextDecoration.underline,
                    decorationColor: isDark
                        ? AppColors.white
                        : AppColors.prim,
                    color: isDark ? AppColors.white : AppColors.prim,
                  ),
                ),
                TextSpan(
                  text: TextString.and,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                TextSpan(
                  text: TextString.termsOfuse,
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                    decoration: TextDecoration.underline,
                    decorationColor: isDark
                        ? AppColors.white
                        : AppColors.prim,
                    color: isDark ? AppColors.white : AppColors.prim,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}