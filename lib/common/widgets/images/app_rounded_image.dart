import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class AppRoundedImage extends StatelessWidget {
  const AppRoundedImage({
    super.key,
    this.width,
    this.hight,
    required this.imageUrl,
    this.applyImageRadious = true,
    this.bgColor,
    this.fit = BoxFit.contain,
    this.bord,
    this.padding,
    this.isNetworkImage = false,
    this.onTap,
    this.boarderRadious = 13,
  });

  final double? width, hight;
  final String imageUrl;
  final bool applyImageRadious;
  final Color? bgColor;
  final BoxFit? fit;
  final BoxBorder? bord;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onTap;
  final double boarderRadious;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: hight,
        width: width,
        padding: padding,
        decoration: BoxDecoration(
          color: bgColor,
          border: bord,
          borderRadius: BorderRadius.circular(AppSizes.md),
        ),
        child: ClipRRect(
          borderRadius: applyImageRadious
              ? BorderRadius.circular(boarderRadious)
              : BorderRadius.zero,
          child: Image(
            image: isNetworkImage
                ? NetworkImage(imageUrl)
                : AssetImage(imageUrl),
            fit: fit,
          ),
        ),
      ),
    );
  }
}
