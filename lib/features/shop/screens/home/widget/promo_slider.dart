import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/common/widgests/custom_shapes/containers/circular_container.dart';
import 'package:e_commerce/common/widgests/images/t_rounded_image.dart';
import 'package:e_commerce/features/shop/controllers/home_controller.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key,
    required this.banners,
  });
  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
            items: banners.map((url) => TRoundedImage(imageUrl: url)).toList(),
            options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, _) =>
                  controller.updatePageIndicator(index),
            )),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  TCircularContainer(
                    margin: const EdgeInsets.only(right: 10),
                    width: 20,
                    height: 4,
                    backgroundColor: controller.carouselCurrentIndex.value == i
                        ? TColors.primaryColor
                        : TColors.grey,
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
