import 'package:e_commerce_app/common/widgets/scrollable_image/vertical_images.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 8,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return AppVerticalImage(
            onTap: () {},
            text: 'Electronics',
            image: AppImages.electronicIcon,
          );
        },
      ),
    );
  }
}