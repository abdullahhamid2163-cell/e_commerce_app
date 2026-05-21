import 'package:e_commerce_app/features/authentication/screen/login/login_screen.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_string.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: Icon(
              CupertinoIcons.clear,
              color: isDark ? AppColors.white : AppColors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              const Image(image: AssetImage(AppImages.sendMail)),
              const Text(
                TextString.confirmEmailTitle,
                textAlign: TextAlign.center,
              ),
              const Text(
                TextString.confirmEmailSubTitle,
                textAlign: TextAlign.center,
              ),
              InkWell(
                onTap: () {
                  // Get.to(() => const VerifyEmailScreen());
                },
                child: Container(
                  height: AppSizes.buttonHeight * 3,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue,
                  ),
                  child: const Center(child: Text(TextString.createAccount)),
                ),
              ),
              InkWell(
                onTap: () {
                  //Get.to(() => const SignUpScreen());
                },
                child: Container(
                  height: AppSizes.buttonHeight * 3,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  child: const Center(child: Text(TextString.reSendEmail)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
