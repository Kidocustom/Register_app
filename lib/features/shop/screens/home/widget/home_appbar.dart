import 'package:e_commerce/common/widgests/login_signup/app_bar/app_bar.dart';
import 'package:e_commerce/common/widgests/products/products.cart/cart/cart_menu_icon.dart';
import 'package:e_commerce/features/personalization/controllers/user_controller.dart';
import 'package:e_commerce/common/widgests/shimmers/shimmer.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserController());
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TTexts.homeAppBarTitle1,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: TColors.grey),
          ),
          Obx(
            () {
              if (controller.profileLoading.value) {
                // DISPLAY A SHIMMER LOADER WHILE USER PROFILE IS BEING LOADED
                return const TShimmerEffect(width: 80, height: 15);
              } else {
                return Text(
                  controller.user.value.fullName,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .apply(color: TColors.white),
                );
              }
            },
          )
        ],
      ),
      actions: [
        TCardCounterIcon(
          onPressed: () {},
          iconColor: TColors.white,
        )
      ],
    );
  }
}
