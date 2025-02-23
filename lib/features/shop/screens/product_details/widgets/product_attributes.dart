import 'package:e_commerce/common/widgests/chips/choice_chips.dart';
import 'package:e_commerce/common/widgests/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/common/widgests/texts/product_price_text.dart';
import 'package:e_commerce/common/widgests/texts/product_title_text.dart';
import 'package:e_commerce/common/widgests/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        ///Selected Attributes Pricing & Description
        TRoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children: [
              /// TITLE,PRICE AND STOCK STATUS
              Row(
                children: [
                  const TSectionHeading(
                    title: 'Variation',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const TProductTitleText(
                            title: 'Price : ',
                            smallSize: true,
                          ),

                          /// ACTUAL PRICE
                          Text(
                            '\$25',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(
                            width: TSizes.spaceBtwItems,
                          ),
                          const TProductPriceText(price: '20')
                        ],
                      ),

                      /// -- STOCK
                      Row(
                        children: [
                          const TProductTitleText(
                            title: 'Stock :',
                            smallSize: true,
                          ),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      )
                    ],
                  ),

                  /// SALE PRICE
                ],
              ),

              /// Variation Description
              const TProductTitleText(
                title:
                    'This is the Description of the product and it can go up to max 4 lines',
                smallSize: true,
                maxLines: 4,
              )
            ],
          ),
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),

        /// -- ATTRIBUTES
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(
              title: 'Colors',
              showActionButton: false,
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChips(
                  text: 'Green',
                  selected: true,
                  onSelected: (value) {},
                ),
                TChoiceChips(
                    text: 'Purple', selected: false, onSelected: (value) {}),
                TChoiceChips(
                  text: 'Yellow',
                  selected: false,
                  onSelected: (value) {},
                ),
                TChoiceChips(
                  text: 'Green',
                  selected: true,
                  onSelected: (value) {},
                ),
                TChoiceChips(
                    text: 'Purple', selected: false, onSelected: (value) {}),
                TChoiceChips(
                  text: 'Yellow',
                  selected: false,
                  onSelected: (value) {},
                ),
                TChoiceChips(
                  text: 'Green',
                  selected: true,
                  onSelected: (value) {},
                ),
                TChoiceChips(
                    text: 'Purple', selected: false, onSelected: (value) {}),
                TChoiceChips(
                  text: 'Yellow',
                  selected: false,
                  onSelected: (value) {},
                )
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(
              title: 'Size',
              showActionButton: false,
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChips(
                  text: 'EU 34',
                  selected: true,
                  onSelected: (value) {},
                ),
                TChoiceChips(
                  text: 'EU 36',
                  selected: false,
                  onSelected: (value) {},
                ),
                TChoiceChips(
                  text: 'EU 38',
                  selected: false,
                  onSelected: (value) {},
                ),
                TChoiceChips(
                  text: 'EU 34',
                  selected: true,
                  onSelected: (value) {},
                ),
                TChoiceChips(
                  text: 'EU 36',
                  selected: false,
                  onSelected: (value) {},
                ),
                TChoiceChips(
                  text: 'EU 38',
                  selected: false,
                  onSelected: (value) {},
                ),
                TChoiceChips(
                  text: 'EU 34',
                  selected: true,
                  onSelected: (value) {},
                ),
                TChoiceChips(
                  text: 'EU 36',
                  selected: false,
                  onSelected: (value) {},
                ),
                TChoiceChips(
                  text: 'EU 38',
                  selected: false,
                  onSelected: (value) {},
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
