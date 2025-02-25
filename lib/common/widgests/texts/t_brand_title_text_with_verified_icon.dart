import 'package:e_commerce/common/widgests/texts/t_brand_title_text.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/enums.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TBrandTitleTextWithVerifiedIcon extends StatelessWidget {
  const TBrandTitleTextWithVerifiedIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = TColors.primaryColor,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });
  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
            child: TBrandTitleText(
                title: title,
                color: textColor,
                maxLines: maxLines,
                textAlign: textAlign,
                brandTextSize: brandTextSize)),
        const SizedBox(
          width: TSizes.xs,
        ),
        const Icon(
          Iconsax.verify5,
          color: TColors.primaryColor,
          size: TSizes.iconxs,
        )
      ],
    );
  }
}
