import 'package:e_commerce_app/common/widgets/button/custom_elevated_button.dart';
import 'package:e_commerce_app/features/authentication/screen/password_config/reset_password.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [const Icon(CupertinoIcons.clear)],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              Text(
                TextString.forgetPasswordTitle,
                textAlign: .center,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              Text(
                TextString.forgetPasswordSubTitle,
                textAlign: .center,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(height: AppSizes.spaceBtwSections * 2),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: TextString.email,
                ),
              ),
              const SizedBox(height: AppSizes.spaceBtwSections),

              CustomElevatedButton(
                text: TextString.submit,
                onTap: () => Get.to(() => const ResetPassword()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
