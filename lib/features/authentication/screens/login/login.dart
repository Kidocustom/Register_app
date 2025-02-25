import 'package:e_commerce/common/styles/spacing_style.dart';
import 'package:e_commerce/common/widgests/login_signup/form_divider.dart';
import 'package:e_commerce/common/widgests/login_signup/social_buttons.dart';
import 'package:e_commerce/features/authentication/screens/login/widgets/login_form.dart';
import 'package:e_commerce/features/authentication/screens/login/widgets/login_header.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: TSpacingStyle.paddingWithAppBarHeight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///logo, title & subtitle
            const TLoginHeader(),
            const TLoginForm(),

            ///DIVIDER
            TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),

            ///FOOTER
            const TSocialButtons()
          ],
        ),
      )),
    );
  }
}
