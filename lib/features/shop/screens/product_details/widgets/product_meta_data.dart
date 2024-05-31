import 'package:e_commerce/common/widgests/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/common/widgests/images/t_circular_image.dart';
import 'package:e_commerce/common/widgests/texts/product_price_text.dart';
import 'package:e_commerce/common/widgests/texts/product_title_text.dart';
import 'package:e_commerce/common/widgests/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/enums.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ///Price & Sale Price
        Row(
          children: [
            /// SALE TAG
            TRoundedContainer(
              radius: TSizes.sm,
              backgroundColor: TColors.secondaryColor.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                horizontal: TSizes.sm,
                vertical: TSizes.xs,
              ),
              child: Text(
                '25%',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: TColors.black),
              ),
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),

            /// PRICE
            Text(
              '\$250',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            const TProductPriceText(
              price: '175',
              isLarge: true,
            ),
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems / 1.5,
        ),

        ///Title
        const TProductTitleText(title: 'Black Nike Sport shoe'),
        const SizedBox(
          height: TSizes.spaceBtwItems / 1.5,
        ),

        ///Stock Status
        Row(
          children: [
            const TProductTitleText(title: 'Status'),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            Text(
              'In Stock',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems / 1.5,
        ),

        ///Brand
        Row(
          children: [
            TCircularImage(
              image: TImages.product2,
              width: 32,
              height: 32,
              overlayColor: darkMode ? TColors.white : TColors.dark,
            ),
            const TBrandTitleTextWithVerifiedIcon(
                title: 'Nike', brandTextSize: TextSizes.medium),
          ],
        )
      ],
    );
  }
}
