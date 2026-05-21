import 'package:e_commerce_app/features/authentication/screen/sign_up/sign_up_screen.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});
  @override
  Widget build(BuildContext context) {
    //final GlobalKey<State<StatefulWidget>> formKey;
    return Form(
      //key: formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppSizes.spaceBtwSections,
        ),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: TextString.email,
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
            const SizedBox(height: AppSizes.spaceBtwInputFields / 2),
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(TextString.rememberMe),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(TextString.forgetPassword),
                ),
              ],
            ),
            const SizedBox(height: AppSizes.spaceBtwSections),
            InkWell(
              onTap: () {},
              child: Container(
                height: AppSizes.buttonHeight * 3,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blue,
                ),
                child: const Center(child: Text(TextString.signIn)),
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),
            InkWell(
              onTap: () {
                Get.to(() => const SignUpScreen());
              },
              child: Container(
                height: AppSizes.buttonHeight * 3,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: const Color.fromARGB(255, 0, 0, 0)),
                ),
                child: const Center(child: Text(TextString.createAccount)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
