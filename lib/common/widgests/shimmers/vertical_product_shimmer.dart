import 'package:e_commerce/common/widgests/layouts/grid_layouts.dart';
import 'package:e_commerce/common/widgests/shimmers/shimmer.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TVerticalProductShimmer extends StatelessWidget {
  const TVerticalProductShimmer({super.key, this.itemCount = 4});

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return TGridLayout(
        itemcount: itemCount,
        itemBuilder: (_, __) => const SizedBox(
              width: 180,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Image
                  TShimmerEffect(width: 180, height: 180),
                  SizedBox(
                    height: TSizes.spaceBtwnSections,
                  ),

                  // Text
                  TShimmerEffect(width: 160, height: 15),
                  SizedBox(
                    height: TSizes.spaceBtwItems / 2,
                  ),
                  TShimmerEffect(width: 110, height: 15),
                ],
              ),
            ));
  }
}
