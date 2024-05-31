import 'package:e_commerce/common/widgests/custom_shapes/containers/primary_header_container.dart';
import 'package:e_commerce/common/widgests/custom_shapes/search_container.dart';
import 'package:e_commerce/common/widgests/layouts/grid_layouts.dart';
import 'package:e_commerce/common/widgests/products/products.cart/product_card_vertical.dart';
import 'package:e_commerce/common/widgests/texts/section_heading.dart';
import 'package:e_commerce/features/shop/screens/all_products/all_products.dart';
import 'package:e_commerce/features/shop/screens/home/widget/home_appbar.dart';
import 'package:e_commerce/features/shop/screens/home/widget/home_categories.dart';
import 'package:e_commerce/features/shop/screens/home/widget/promo_slider.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// -- HEADER
            const TPrimaryHeaderContainer(
              child: Column(children: [
                /// -- APPBAR
                THomeAppBar(),
                SizedBox(
                  height: TSizes.spaceBtwnSections / 2,
                ),

                /// -- SEARCHBAR
                TSearchContainer(text: 'Search in Store'),
                SizedBox(
                  height: TSizes.spaceBtwnSections / 2,
                ),

                /// -- CATEGORIES
                Padding(
                  padding: EdgeInsets.only(left: TSizes.defaultSpace),
                  child: Column(
                    children: [
                      /// -- HEADING
                      TSectionHeading(
                        textColor: TColors.white,
                        title: 'Popular Categories',
                        showActionButton: false,
                      ),
                      SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),

                      /// -- SCROLL CATEGORY
                      THomeCategories(),
                    ],
                  ),
                ),
                SizedBox(
                  height: TSizes.spaceBtwnSections,
                )
              ]),
            ),

            /// -- BODY
            Column(
              children: [
                const Padding(
                    padding: EdgeInsets.all(TSizes.spaceBtwItems - 10),

                    /// -- PROMO SLIDER
                    child: TPromoSlider(
                      banners: [
                        TImages.promoBanner3,
                        TImages.promoBanner2,
                        TImages.promoBanner1,
                      ],
                    )),
                const SizedBox(
                  height: TSizes.spaceBtwnSections,
                ),
                Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),

                  /// -- HEADING
                  child: TSectionHeading(
                      title: 'Popular Products',
                      onPressed: () => Get.to(() => const AllProducts())),
                ),
                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),

                /// -- POPULAR CATEGORY
                Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: TGridLayout(
                    itemcount: 4,
                    itemBuilder: (_, index) => const TProductCardVertical(),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
