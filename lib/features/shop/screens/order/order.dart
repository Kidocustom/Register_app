import 'package:e_commerce/common/widgests/login_signup/app_bar/app_bar.dart';
import 'package:e_commerce/features/shop/screens/order/widget/orders_list.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// -- APPBAR
      appBar: TAppBar(
          showBackArrow: true,
          title: Text(
            'My Orders',
            style: Theme.of(context).textTheme.headlineSmall,
          )),
      body: const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),

        /// -- Orders
        child: TOrderListItems(),
      ),
    );
  }
}
