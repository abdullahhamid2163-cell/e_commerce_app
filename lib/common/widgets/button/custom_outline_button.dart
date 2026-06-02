import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class CustomOutlineButton extends StatelessWidget {
  const CustomOutlineButton({
    super.key,
    required this.text,
    required this.onTap,
  });
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunction.isDarkMode(context);
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: const Color.fromARGB(255, 73, 73, 73)),
        ),
        onPressed: onTap,
        child: Text(
          text,
          style: TextStyle(color: isDark ? AppColors.white : AppColors.black),
        ),
      ),
    );
  }
}
