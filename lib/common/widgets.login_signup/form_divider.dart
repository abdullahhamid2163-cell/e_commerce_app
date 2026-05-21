import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class FormDivider extends StatelessWidget {
  const FormDivider({super.key, required this.dividerText});
  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunction.isDarkMode(context);
    return Row(
      children: [
        Expanded(
          child: Divider(
            thickness: 2,
            indent: 30,
            color: isDark ? AppColors.darkGrey : AppColors.grey,
            endIndent: 6,
          ),
        ),
        Text(dividerText, style: Theme.of(context).textTheme.labelMedium),
        Expanded(
          child: Divider(
            thickness: 2,
            indent: 6,
            color: isDark ? AppColors.darkGrey : AppColors.grey,
            endIndent: 30,
          ),
        ),
      ],
    );
  }
}