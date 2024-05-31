import 'package:e_commerce/common/widgests/icons/t_circular_icon.dart';
import 'package:e_commerce/common/widgests/images/t_rounded_image.dart';
import 'package:e_commerce/common/widgests/login_signup/app_bar/app_bar.dart';
import 'package:e_commerce/common/widgests/login_signup/curved_edges/curved_edges_widget.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TCurvedEdgesWidget(
      child: Container(
        color: dark ? TColors.darkerGrey : TColors.light,
        child: Stack(
          children: [
            /// -- Main Large Image
            const SizedBox(
                height: 400,
                child: Padding(
                  padding: EdgeInsets.all(0),
                  child: Center(
                      child: Image(
                    image: AssetImage(TImages.product1),
                    fit: BoxFit.cover,
                  )),
                )),

            /// -- Image SLider
            Positioned(
              right: 0,
              bottom: 30,
              left: TSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemBuilder: (_, index) => TRoundedImage(
                    imageUrl: TImages.product1,
                    backgroundColor: dark ? TColors.dark : TColors.white,
                    border: Border.all(color: TColors.primaryColor),
                    padding: const EdgeInsets.all(TSizes.xs - 3),
                    width: 80,
                  ),
                  separatorBuilder: (_, __) => const SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                  itemCount: 6,
                ),
              ),
            ),

            /// -- Appbar Icons
            const TAppBar(
              showBackArrow: true,
              actions: [
                TCircularIcon(
                  icon: Iconsax.heart5,
                  color: Colors.red,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
