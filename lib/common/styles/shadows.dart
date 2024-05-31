import 'package:e_commerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TShadowStyle {
  static const verticalProductShadow = BoxShadow(
      color: TColors.darkerGrey,
      blurRadius: 15,
      spreadRadius: 2,
      offset: Offset(0, 1));

  static final horizontalProductShadow = BoxShadow(
      color: TColors.darkGrey.withOpacity(0.1),
      blurRadius: 15,
      spreadRadius: 2,
      offset: const Offset(0, 1));
}
