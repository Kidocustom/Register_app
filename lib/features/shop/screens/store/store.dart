import 'package:e_commerce/common/widgests/appbar/tabbar.dart';
import 'package:e_commerce/common/widgests/custom_shapes/search_container.dart';
import 'package:e_commerce/common/widgests/layouts/grid_layouts.dart';
import 'package:e_commerce/common/widgests/login_signup/app_bar/app_bar.dart';
import 'package:e_commerce/common/widgests/products/products.cart/cart/cart_menu_icon.dart';
import 'package:e_commerce/common/widgests/texts/section_heading.dart';
import 'package:e_commerce/common/widgests/brands/brand_card.dart';
import 'package:e_commerce/features/shop/controllers/categories_controller.dart';
import 'package:e_commerce/features/shop/screens/brands/all_brands.dart';
import 'package:e_commerce/features/shop/screens/store/widgets/category_tab.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final categories = CategoryController.instance.featuredCategories;
    return DefaultTabController(
      length: categories.length,
      child: Scaffold(
        appBar: TAppBar(
          title:
              Text('Store', style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            TCardCounterIcon(
              onPressed: () {},
            ),
          ],
        ),
        body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrollabld) {
              return [
                SliverAppBar(
                    automaticallyImplyLeading: false,
                    pinned: true,
                    floating: true,
                    backgroundColor: THelperFunctions.isDarkMode(context)
                        ? TColors.black
                        : TColors.white,
                    expandedHeight: 440,
                    flexibleSpace: Padding(
                      padding: const EdgeInsets.all(TSizes.defaultSpace),
                      child: ListView(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          ///--SEARCH BAR
                          const SizedBox(
                            height: TSizes.spaceBtwItems,
                          ),
                          const TSearchContainer(
                            text: 'Search in store',
                            showBorder: true,
                            showBackGround: false,
                            padding: EdgeInsets.zero,
                          ),
                          const SizedBox(
                            height: TSizes.spaceBtwnSections,
                          ),

                          ///--FEATURED BRANDS
                          TSectionHeading(
                              title: "Featured Brands",
                              onPressed: () =>
                                  Get.to(() => const AllBrandsScreen())),
                          const SizedBox(
                            height: TSizes.spaceBtwItems / 1.5,
                          ),

                          /// --  BRANDS GRID
                          TGridLayout(
                              itemcount: 4,
                              mainAxisExtent: 80,
                              itemBuilder: (_, index) {
                                return const TBrandCard(
                                  showBorder: false,
                                );
                              })
                        ],
                      ),
                    ),

                    /// -- TABS
                    bottom: TTabBar(
                        tabs: categories
                            .map((category) => Tab(child: Text(category.name)))
                            .toList())),
              ];
            },

            /// -- BODY
            body: TabBarView(
                children: categories
                    .map((category) => TCategoryTab(
                          category: category,
                        ))
                    .toList())),
      ),
    );
  }
}
