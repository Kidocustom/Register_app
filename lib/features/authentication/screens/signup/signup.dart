import 'package:e_commerce/common/widgests/login_signup/form_divider.dart';
import 'package:e_commerce/common/widgests/login_signup/social_buttons.dart';
import 'package:e_commerce/features/authentication/screens/signup.widgets/signup_form.dart';

import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///TITLE
              Text(
                TTexts.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: TSizes.spaceBtwnSections,
              ),

              ///FORM
              const TSignupForm(),
              const SizedBox(height: TSizes.defaultSpace - 6),

              ///DIVIDER
              TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
              const SizedBox(height: TSizes.defaultSpace - 6),

              ///SOCIAL BUTTONS
              const TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
