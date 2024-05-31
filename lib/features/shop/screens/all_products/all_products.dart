import 'package:e_commerce/common/widgests/login_signup/app_bar/app_bar.dart';
import 'package:e_commerce/common/widgests/products/sortable/sortable_products.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TAppBar(
        title: Text(
          'Popular Products',
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: TSortableProducts()),
    );
  }
}
