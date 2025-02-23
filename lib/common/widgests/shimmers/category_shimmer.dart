import 'package:e_commerce/common/widgests/shimmers/shimmer.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TCategoryShimmer extends StatelessWidget {
  const TCategoryShimmer({super.key, this.itemCount = 6});
  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (_, __) =>
            const SizedBox(width: TSizes.spaceBtwItems),
        itemCount: itemCount,
        itemBuilder: (_, __) {
          return const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image
              TShimmerEffect(
                width: 55,
                height: 55,
                radius: 55,
              ),
              SizedBox(height: TSizes.spaceBtwItems / 2),

              // Text
              TShimmerEffect(width: 55, height: 8)
            ],
          );
        },
      ),
    );
  }
}
