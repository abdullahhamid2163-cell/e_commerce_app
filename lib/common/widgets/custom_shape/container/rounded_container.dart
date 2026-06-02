import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class AppRoundedContainer extends StatelessWidget {
  const AppRoundedContainer({super.key, this.height, this.width, this.radius = AppSizes.cardRadiusLg, this.bgColor = AppColors.white, this.child, this.showerBorder = false, this.borderColor = AppColors.borderPrim, this.padding, this.margin});

  final double? height;
  final double? width;
  final double radius;
  final Color bgColor;
  final Widget? child;
  final bool showerBorder;
  final Color borderColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        border: showerBorder ? Border.all(color: borderColor) : null,
        color: bgColor,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: child,
    );
  }
}
