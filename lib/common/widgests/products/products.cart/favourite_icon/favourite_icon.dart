import 'package:e_commerce/common/widgests/icons/t_circular_icon.dart';

import 'package:e_commerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TFavouriteIcon extends StatelessWidget {
  const TFavouriteIcon({super.key, required this.productId});

  final String productId;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => TCircularIcon(
        icon: Iconsax.heart5,
        color: TColors.error,
        onPressed: () {},
      ),
    );
  }
}
