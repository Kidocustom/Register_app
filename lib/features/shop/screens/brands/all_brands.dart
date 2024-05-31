import 'package:e_commerce/common/widgests/brands/brand_card.dart';
import 'package:e_commerce/common/widgests/layouts/grid_layouts.dart';
import 'package:e_commerce/common/widgests/login_signup/app_bar/app_bar.dart';
import 'package:e_commerce/common/widgests/texts/section_heading.dart';
import 'package:e_commerce/features/shop/screens/brands/brands_products.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Brands'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// -- HEADING
              const TSectionHeading(
                title: 'Brands',
                showActionButton: false,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              /// -- BRANDS
              TGridLayout(
                  itemcount: 10,
                  mainAxisExtent: 80,
                  itemBuilder: (context, index) => TBrandCard(
                        showBorder: true,
                        onTap: () => Get.to(() => const BrandProducts()),
                      ))
            ],
          ),
        ),
      ),
    );
  }
}
