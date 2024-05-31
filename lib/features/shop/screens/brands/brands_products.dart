import 'package:e_commerce/common/widgests/brands/brand_card.dart';
import 'package:e_commerce/common/widgests/login_signup/app_bar/app_bar.dart';
import 'package:e_commerce/common/widgests/products/sortable/sortable_products.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TAppBar(
        title: Text('Nike'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// -- BRAND DETAILS
              TBrandCard(showBorder: true),
              SizedBox(
                height: TSizes.spaceBtwnSections,
              ),
              TSortableProducts()
            ],
          ),
        ),
      ),
    );
  }
}
