import 'package:e_commerce/features/shop/screens/cart/cart.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TCardCounterIcon extends StatelessWidget {
  const TCardCounterIcon({
    super.key,
    required this.onPressed,
    this.iconColor,
    this.counterBgColor,
    this.counterTextColor,
  });
  final VoidCallback onPressed;
  final Color? iconColor, counterBgColor, counterTextColor;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(
            onPressed: () => Get.to(() => const CartScreen()),
            icon: Icon(
              Iconsax.shopping_bag,
              color: iconColor,
            )),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
                color: counterBgColor ?? (dark ? Colors.white : TColors.dark),
                borderRadius: BorderRadius.circular(100)),
            child: Center(
              child: Text(
                '2',
                style: Theme.of(context).textTheme.labelLarge!.apply(
                    color: counterTextColor ??
                        (dark ? TColors.dark : TColors.white),
                    fontSizeFactor: 0.8),
              ),
            ),
          ),
        )
      ],
    );
  }
}
