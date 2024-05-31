import 'package:e_commerce/common/widgests/images/t_rounded_image.dart';
import 'package:e_commerce/common/widgests/texts/product_title_text.dart';
import 'package:e_commerce/common/widgests/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// -- Image
        TRoundedImage(
            imageUrl: TImages.product1,
            width: 60,
            height: 60,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: THelperFunctions.isDarkMode(context)
                ? TColors.darkerGrey
                : TColors.light),
        const SizedBox(
          width: TSizes.spaceBtwItems,
        ),

        /// TITLE, PRICE & SIZE
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TBrandTitleTextWithVerifiedIcon(
                title: 'Nike',
                textColor: TColors.darkGrey,
              ),
              const TProductTitleText(
                title: "Black Sports Shoes",
                maxLines: 1,
              ),

              /// -- ATTRIBUTES
              Text.rich(TextSpan(children: [
                TextSpan(
                    text: 'Color ',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: 'Black ',
                    style: Theme.of(context).textTheme.bodyLarge),
                TextSpan(
                    text: 'Size ',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: 'UK 08', style: Theme.of(context).textTheme.bodyLarge)
              ]))
            ],
          ),
        )
      ],
    );
  }
}
