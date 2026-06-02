import 'package:e_commerce_app/common/widgets/button/custom_elevated_button.dart';
import 'package:e_commerce_app/features/authentication/screen/sign_up/widget/terms_and_condition_check.dart';
import 'package:e_commerce_app/features/authentication/screen/sign_up/verify_email_screen.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: TextString.firstName,
                  ),
                ),
              ),
              const SizedBox(width: AppSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: TextString.lastName,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSizes.spaceBtwInputFields),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.user_edit),
              labelText: TextString.userName,
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwInputFields),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct),
              labelText: TextString.email,
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwInputFields),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.call),
              labelText: TextString.phoneNo,
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwInputFields),
          TextFormField(
            decoration: const InputDecoration(
              suffixIcon: Icon(Iconsax.eye_slash),
              prefixIcon: Icon(Iconsax.password_check),
              labelText: TextString.password,
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwSections),
          const TermsAndConditionCheck(),
          const SizedBox(height: AppSizes.spaceBtwSections),
          CustomElevatedButton(
            text: TextString.createAccount,
            onTap: () => Get.to(() => const VerifyEmailScreen()),
          ),
        ],
      ),
    );
  }
}
