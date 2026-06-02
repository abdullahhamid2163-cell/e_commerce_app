import 'package:e_commerce_app/common/styles/spacing_styles.dart';
import 'package:e_commerce_app/common/widgets/button/custom_elevated_button.dart';
import 'package:e_commerce_app/features/authentication/screen/login/login_screen.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpaceingStyle.paddingWithAppBarHight * 1.5,
          child: Column(
            children: [
              const Image(image: AssetImage(AppImages.reciveMail)),
              const SizedBox(height: AppSizes.spaceBtwSections),
              Text(
                TextString.yourAccountCreatedTitle,
                textAlign: .center,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              Text(
                TextString.yourAccountCreatedSubTitle,
                textAlign: .center,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(height: AppSizes.spaceBtwSections),
              CustomElevatedButton(
                text: TextString.continueButton,
                onTap: () => Get.offAll(() => const LoginScreen()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
