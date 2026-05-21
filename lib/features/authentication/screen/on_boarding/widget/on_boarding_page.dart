import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.title,
    required this.image,
    required this.subtitle,
  });

  final String title, image, subtitle;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(AppSizes.defaultSpace),
      child: Column(
        children: [
          Expanded(
            flex: 6,
            child: Image.asset(
              image,
              width: size.width * 0.8,
              fit: BoxFit.contain,
            ),
          ),

          Expanded(
            flex: 2,
            child: Column(
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: AppSizes.spaceBtwItems),

                Text(
                  subtitle,
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
