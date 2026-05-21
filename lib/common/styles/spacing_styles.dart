import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class AppSpaceingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHight =
      EdgeInsetsGeometry.only(
        top: AppSizes.appBarHeight,
        left: AppSizes.defaultSpace,
        bottom: AppSizes.defaultSpace,
        right: AppSizes.defaultSpace,
      );
}
