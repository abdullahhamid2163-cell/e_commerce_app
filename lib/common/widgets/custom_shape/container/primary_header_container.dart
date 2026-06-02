import 'package:e_commerce_app/common/widgets/custom_shape/container/circular_container.dart';
import 'package:e_commerce_app/common/widgets/custom_shape/curved_edges/curved_edges_widget.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class AppPrimaryHeaderContainer extends StatelessWidget {
  const AppPrimaryHeaderContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AppCurvedEdgesWidget(
      child: Container(
        padding: const EdgeInsets.all(0),
        color: AppColors.prim,
        child: SizedBox(
          height: 360,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: AppCircularContainer(
                  bgColor: AppColors.textWhite.withValues(alpha: 0.3),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: AppCircularContainer(
                  bgColor: AppColors.textWhite.withValues(alpha: 0.3),
                ),
              ),
              Positioned(
                top: 50,
                right: 300,
                child: AppCircularContainer(
                  hight: 100,
                  width: 100,
                  radius: 100,
                  bgColor: AppColors.textWhite.withValues(alpha: 0.3),
                ),
              ),
              Positioned(
                top: 360,
                right: 200,
                child: AppCircularContainer(
                  hight: 100,
                  width: 100,
                  radius: 100,
                  bgColor: AppColors.textWhite.withValues(alpha: 0.3),
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
