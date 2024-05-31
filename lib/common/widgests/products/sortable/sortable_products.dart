import 'package:e_commerce/common/widgests/layouts/grid_layouts.dart';
import 'package:e_commerce/common/widgests/products/products.cart/product_card_vertical.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TSortableProducts extends StatelessWidget {
  const TSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// -- DROPDOWN
        DropdownButtonFormField(
            decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
            items: [
              'Name',
              ' Higher Price',
              'Lower Price',
              'Sale',
              'Newest',
              'Popularity'
            ]
                .map((options) =>
                    DropdownMenuItem(value: options, child: Text(options)))
                .toList(),
            onChanged: (value) {}),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),

        /// PRODUCTS
        TGridLayout(
            itemcount: 10,
            itemBuilder: (_, index) => const TProductCardVertical())
      ],
    );
  }
}
