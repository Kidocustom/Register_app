import 'package:e_commerce/common/widgests/custom_shapes/image_texts_widgets/vartical_image_text.dart';
import 'package:e_commerce/common/widgests/shimmers/category_shimmer.dart';
import 'package:e_commerce/features/shop/controllers/categories_controller.dart';
import 'package:e_commerce/features/shop/screens/sub_category/sub_categories.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final categoryController = Get.put(CategoryController());

    return Obx(() {
      if (categoryController.isLoading.value) return const TCategoryShimmer();
      if (categoryController.featuredCategories.isEmpty) {
        return Center(
          child: Text(
            'No Data Found!',
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .apply(color: Colors.white),
          ),
        );
      }
      return SizedBox(
        height: 100,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: categoryController.featuredCategories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            final category = categoryController.featuredCategories[index];
            return TVerticalImageText(
              backgroundColor: Colors.white,
              image: category.image,
              title: category.name,
              onTap: () => Get.to(() => const SubCategory()),
            );
          },
        ),
      );
    });
  }
}
