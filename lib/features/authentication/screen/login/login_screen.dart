import 'package:e_commerce_app/common/styles/spacing_styles.dart';
import 'package:e_commerce_app/common/widgets/login_signup/form_divider.dart';
import 'package:e_commerce_app/common/widgets/login_signup/social_button.dart';
import 'package:e_commerce_app/features/authentication/screen/login/widget/login_form.dart';
import 'package:e_commerce_app/features/authentication/screen/login/widget/login_header.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_string.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpaceingStyle.paddingWithAppBarHight,
          child: Column(
            children: [
              LoginHeader(),
              LoginForm(),
              FormDivider(dividerText: TextString.orSignUpWith),
              SizedBox(height: AppSizes.spaceBtwSections),
              SocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
