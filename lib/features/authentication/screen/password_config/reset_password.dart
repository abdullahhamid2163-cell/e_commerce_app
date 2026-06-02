import 'package:e_commerce_app/common/widgets/button/custom_elevated_button.dart';
import 'package:e_commerce_app/common/widgets/button/custom_outline_button.dart';
import 'package:e_commerce_app/features/authentication/screen/login/login_screen.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_string.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: isDark ? AppColors.white : AppColors.black,
        ),
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              const Image(image: AssetImage(AppImages.sendMail)),
              Text(
                TextString.changeYourPasswordTitle,
                textAlign: TextAlign.center, // Fixed rogue dot
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              Text(
                'abdullah23@gmail.com',
                textAlign: TextAlign.center, // Fixed rogue dot
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              Text(
                TextString.changeYourPasswordSubTitle,
                textAlign: TextAlign.center, // Fixed rogue dot
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(height: AppSizes.spaceBtwSections),

              CustomElevatedButton(
                text: TextString.passwordReSetDone,
                onTap: () => Get.offAll(
                  () => const LoginScreen(),
                ), // Fixed stack buildup
              ),
              const SizedBox(
                height: AppSizes.spaceBtwItems,
              ), // Fixed missing const
              CustomOutlineButton(text: TextString.reSendEmail, onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
