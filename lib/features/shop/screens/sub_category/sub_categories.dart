import 'package:e_commerce/common/widgests/images/t_rounded_image.dart';
import 'package:e_commerce/common/widgests/login_signup/app_bar/app_bar.dart';
import 'package:e_commerce/common/widgests/products/products.cart/product_card_horizontal.dart';
import 'package:e_commerce/common/widgests/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategory extends StatelessWidget {
  const SubCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Sports Shirts'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Banner
              const TRoundedImage(
                imageUrl: TImages.product1,
                width: double.infinity,
                applyImageRadius: true,
              ),
              const SizedBox(
                height: TSizes.spaceBtwnSections,
              ),

              /// -- SUB CATEGORIES
              Column(
                children: [
                  /// HEADING
                  TSectionHeading(
                    title: 'Sports Shirts',
                    onPressed: () {},
                  ),
                  const SizedBox(height: TSizes.spaceBtwnSections / 2),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                        itemCount: 4,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) => const SizedBox(
                              width: TSizes.spaceBtwItems,
                            ),
                        itemBuilder: ((context, index) =>
                            const TProductCardHorizontal())),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
