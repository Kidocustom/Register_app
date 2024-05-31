import 'package:e_commerce/common/styles/shadows.dart';
import 'package:e_commerce/common/widgests/icons/t_circular_icon.dart';
import 'package:e_commerce/common/widgests/images/t_rounded_image.dart';
import 'package:e_commerce/common/widgests/texts/product_price_text.dart';
import 'package:e_commerce/common/widgests/texts/product_title_text.dart';
import 'package:e_commerce/common/widgests/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:e_commerce/features/shop/screens/product_details/prroduct_details.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../custom_shapes/containers/rounded_container.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    ///CONTAINER WITH SIDE PADDINGS ,COLOR,EDGES,RADIUS AND SHAOW
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetailScreen()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: const [TShadowStyle.verticalProductShadow],
            borderRadius: BorderRadius.circular(TSizes.productImageRadius),
            color: dark ? TColors.darkerGrey : TColors.white),
        child: Column(
          children: [
            ///Thumbnail , wishlist button, Discount tag
            TRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  /// -- THUMBNAIL IMAGE
                  const TRoundedImage(
                    height: 300,
                    imageUrl: TImages.product1,
                    fit: BoxFit.cover,
                    applyImageRadius: true,
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
            const SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),

            /// -- DETAILS
            const Padding(
              padding: EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TProductTitleText(
                    title: "Timberland shoe store",
                    textAlign: TextAlign.left,
                    smallSize: true,
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwItems / 2,
                  ),
                  TBrandTitleTextWithVerifiedIcon(
                    title: 'Nike',
                  ),
                ],
              ),
            ),
            const Spacer(),

            /// -- PRICE ROW
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// -- PRICE
                const Padding(
                  padding: EdgeInsets.only(left: TSizes.sm),
                  child: TProductPriceText(
                    price: '35.0',
                  ),
                ),

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
    );
  }
}
