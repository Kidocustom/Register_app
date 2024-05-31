import 'package:e_commerce/common/widgests/texts/section_heading.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/rate_share_widget.dart';
import 'package:e_commerce/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// -- Product Image Slider
            const TProductImageSlider(),

            /// -- Product Details

            Padding(
              padding: const EdgeInsets.only(
                  right: TSizes.defaultSpace,
                  left: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  /// -- RATING & SHARE
                  const TRatingAndShare(),

                  /// -- PRICE, TITLE, STOCK, & BRAND
                  const TProductMetaData(),

                  /// -- ATTRIBUTES
                  const TProductAttributes(),
                  const SizedBox(
                    height: TSizes.spaceBtwnSections,
                  ),

                  /// -- CHECKOUT BUTTON
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text('Checkout')),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),

                  /// -- DESCRIPTION
                  const TSectionHeading(
                    title: 'Description',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),

                  const ReadMoreText(
                    'This is a product description for a black Nike sport shoe.There are more things that can be added ,this is for practice purpose',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show More',
                    trimExpandedText: 'Show Less',
                    moreStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        color: Colors.red),
                    lessStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        color: Colors.red),
                  ),

                  /// -- REVIEWS
                  const Divider(),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TSectionHeading(
                        title: 'Reviews(199)',
                        showActionButton: false,
                        onPressed: () {},
                      ),
                      IconButton(
                          onPressed: () =>
                              Get.to(() => const ProductReviewsScreen()),
                          icon: const Icon(Iconsax.arrow_right_3))
                    ],
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwnSections,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
