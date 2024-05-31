import 'package:e_commerce/features/authentication/controllers/onboarding/on_boarding_controllers.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_circular_button.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';

import 'package:e_commerce/utils/constants/image_strings.dart';

import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          //HORIZONTAL SCROLLABLE PAGE
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onBoarding1,
                title: TTexts.onboardingTitle1,
                subTile: TTexts.onboardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoarding2,
                title: TTexts.onboardingTitle2,
                subTile: TTexts.onboardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoarding3,
                title: TTexts.onboardingTitle3,
                subTile: TTexts.onboardingSubTitle3,
              )
            ],
          ),
          // SKIP BUTTON
          const OnBoardingSkip(),
          //SMOOTH PAGE INDICATOR
          const OnBoardingDotNavigation(),
          //CIRCULAR BUTTON
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}
