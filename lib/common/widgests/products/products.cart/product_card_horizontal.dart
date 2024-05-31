import 'package:e_commerce/common/widgests/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/common/widgests/icons/t_circular_icon.dart';
import 'package:e_commerce/common/widgests/images/t_rounded_image.dart';
import 'package:e_commerce/common/widgests/texts/product_price_text.dart';
import 'package:e_commerce/common/widgests/texts/product_title_text.dart';
import 'package:e_commerce/common/widgests/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TProductCardHorizontal extends StatelessWidget {
  const TProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkerGrey : TColors.softGrey),
      child: Row(
        children: [
          ///ThumbNail
          TRoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(
              TSizes.sm,
            ),
            backgroundColor: dark ? TColors.dark : TColors.light,
            child: Stack(
              children: [
                /// ThumbNail Image
                const SizedBox(
                  width: 120,
                  height: 120,
                  child: TRoundedImage(
                    imageUrl: TImages.product1,
                    applyImageRadius: true,
                  ),
                ),

                /// -- SALE TAG
                Positioned(
                  top: 1,
                  left: 1,
                  child: TRoundedContainer(
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
                ),

                /// -- FAVOURITE ICON BUTTON
                const Positioned(
                    right: -3,
                    top: -2,
                    child: TCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    )),
              ],
            ),
          ),

          /// -- DETAILS
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(top: TSizes.sm, left: TSizes.sm),
              child: Column(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TProductTitleText(
                        title: 'Black Nike Half Sleeves Shoe',
                        smallSize: true,
                      ),
                      SizedBox(
                        height: TSizes.spaceBtwItems / 2,
                      ),
                      TBrandTitleTextWithVerifiedIcon(title: 'Nike')
                    ],
                  ),
                  const Spacer(),

                  /// -- PRICING
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(child: TProductPriceText(price: '256.0')),

                      /// -- ADD TO CART BUTTON
                      Container(
                        decoration: const BoxDecoration(
                          color: TColors.dark,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(TSizes.cardRadiusMd),
                              bottomRight:
                                  Radius.circular(TSizes.productImageRadius)),
                        ),
                        child: const SizedBox(
                          width: TSizes.iconLg * 1.2,
                          height: TSizes.iconLg * 1.2,
                          child: Center(
                            child: Icon(
                              Iconsax.add,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
