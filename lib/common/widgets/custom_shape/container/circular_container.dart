import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class AppCircularContainer extends StatelessWidget {
  const AppCircularContainer({
    super.key,
    this.width = 400,
    this.hight = 400,
    this.padding = 0,
    this.radius = 400,
    this.child,
    this.bgColor = AppColors.white, this.margin,
  });
  final double? width;
  final double? hight;
  final double padding;
  final EdgeInsets? margin;
  final double radius;
  final Widget? child;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: hight,
      width: width,
      margin: margin,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: child,
    );
  }
}
