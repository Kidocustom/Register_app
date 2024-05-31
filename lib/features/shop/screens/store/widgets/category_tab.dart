import 'package:e_commerce/common/widgests/brands/brand_showcase.dart';
import 'package:e_commerce/common/widgests/layouts/grid_layouts.dart';
import 'package:e_commerce/common/widgests/products/products.cart/product_card_vertical.dart';
import 'package:e_commerce/common/widgests/texts/section_heading.dart';
import 'package:e_commerce/features/shop/models/category_models.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({
    super.key,
    required this.category,
  });
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                /// -- BRANDS
                const TBrandShowcase(
                  images: [
                    TImages.onBoarding1,
                    TImages.onBoarding2,
                    TImages.onBoarding3
                  ],
                ),
                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),

                /// -- PRODUCTS
                TSectionHeading(
                  title: 'You might like',
                  onPressed: () {},
                ),
                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                TGridLayout(
                    itemcount: 4,
                    itemBuilder: (_, index) => const TProductCardVertical())
              ],
            ),
          ),
        ]);
  }
}
