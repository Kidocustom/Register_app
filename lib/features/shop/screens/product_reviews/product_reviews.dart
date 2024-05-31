import 'package:e_commerce/common/widgests/login_signup/app_bar/app_bar.dart';
import 'package:e_commerce/common/widgests/products/ratings/rating_indicator.dart';
import 'package:e_commerce/features/shop/screens/product_reviews/widget/rating_progress_indicator.dart';
import 'package:e_commerce/features/shop/screens/product_reviews/widget/user_review_card.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// -- Appbar
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text('Reviews & Ratings'),
      ),

      /// -- Body
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
                'Ratings and reviews are verified and are from people who use the same type of device you use'),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),

            ///OVERALL PRODUCT RATING
            const TOverallProductRating(),
            const TRatingBarIndicator(
              rating: 3.5,
            ),

            Text(
              '12,611',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(
              height: TSizes.spaceBtwnSections,
            ),

            /// USER REVIEW LIST
            const UserReviewCard(), const UserReviewCard(),
            const UserReviewCard(), const UserReviewCard()
          ],
        ),
      ),
    );
  }
}
