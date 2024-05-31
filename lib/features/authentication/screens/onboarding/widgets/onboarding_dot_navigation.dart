import 'package:e_commerce/features/authentication/controllers/onboarding/on_boarding_controllers.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/device/device_utility.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    final controller = OnBoardingController.instance;
    return Positioned(
        bottom: TDeviceUtils.getBottomBarNavigationHeight() + 25,
        left: TSizes.defaultSpace,
        child: SmoothPageIndicator(
          effect: ExpandingDotsEffect(
              activeDotColor: dark ? TColors.light : TColors.dark,
              dotHeight: 6),
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 3,
        ));
  }
}
