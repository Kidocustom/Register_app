import 'package:e_commerce/common/widgests/login_signup/app_bar/app_bar.dart';
import 'package:e_commerce/common/widgests/products/products.cart/cart/add_remove_button.dart';
import 'package:e_commerce/common/widgests/products/products.cart/cart/cart_item.dart';
import 'package:e_commerce/common/widgests/texts/product_price_text.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ListView.separated(
            separatorBuilder: (_, __) => const SizedBox(
                  height: TSizes.spaceBtwnSections,
                ),
            itemCount: 10,
            shrinkWrap: true,
            itemBuilder: (_, index) => const Column(
                  children: [
                    /// -- IMAGE & CONTAINER
                    TCartItem(),
                    SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            /// -- EXTRA SPACE
                            SizedBox(
                              width: 70,
                            ),

                            /// ADD, REMOVE BUTTON

                            TProductQualityWithAddRemoveButton(),
                          ],
                        ),
                        TProductPriceText(price: '256')
                      ],
                    )
                  ],
                )),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Checkout \$256.0'),
        ),
      ),
    );
  }
}
