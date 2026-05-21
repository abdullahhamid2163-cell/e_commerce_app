import 'package:e_commerce_app/common/styles/spacing_styles.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_string.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey();
    final isDark = HelperFunction.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpaceingStyle.paddingWithAppBarHight,
          child: Column(
            children: [
              Column(
                crossAxisAlignment: .start,
                children: [
                  Image(
                    height: 100,
                    image: AssetImage(
                      isDark ? AppImages.lightAppLogo : AppImages.darkAppLogo,
                    ),
                  ),
                  const SizedBox(height: AppSizes.lg),
                  Text(
                    TextString.loginTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: AppSizes.sm),
                  Text(
                    TextString.loginSubTitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  //SubTitle
                ],
              ),
              Form(
                key: formKey,
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
                      Container(
                        height: AppSizes.buttonHeight * 3,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blue,
                        ),
                        child: Center(child: Text(TextString.signIn)),
                      ),
                      const SizedBox(height: AppSizes.spaceBtwItems),
                      Container(
                        height: AppSizes.buttonHeight * 3,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: const Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                        child: Center(child: Text(TextString.createAccount)),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 2,
                      indent: 30,
                      color: isDark ? AppColors.darkGrey : AppColors.grey,
                      endIndent: 6,
                    ),
                  ),
                  Text(
                    TextString.orSignUpWith,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 2,
                      indent: 6,
                      color: isDark ? AppColors.darkGrey : AppColors.grey,
                      endIndent: 30,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.grey, width: 2),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Image(
                        width: AppSizes.iconMd,
                        height: AppSizes.iconMd,
                        image: AssetImage(AppImages.facebook),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
