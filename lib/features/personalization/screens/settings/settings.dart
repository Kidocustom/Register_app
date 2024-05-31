import 'package:e_commerce/common/widgests/custom_shapes/containers/primary_header_container.dart';
import 'package:e_commerce/common/widgests/list_tiles/settings_menu_tile.dart';
import 'package:e_commerce/common/widgests/list_tiles/user_profile_tile.dart';
import 'package:e_commerce/common/widgests/login_signup/app_bar/app_bar.dart';
import 'package:e_commerce/common/widgests/texts/section_heading.dart';
import 'package:e_commerce/data/repositories/repositories.authentication/authentication_repository.dart';
import 'package:e_commerce/features/personalization/screens/address/address.dart';
import 'package:e_commerce/features/personalization/screens/profile/profile.dart';
import 'package:e_commerce/features/shop/screens/order/order.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// -- HEADER
            TPrimaryHeaderContainer(
                child: Column(
              children: [
                ///APPBAR
                TAppBar(
                  title: Text(
                    'Account',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: TColors.white),
                  ),
                ),
                const SizedBox(
                  height: TSizes.spaceBtwnSections,
                ),

                ///USER PROFILE CARD
                TUserProfileTile(
                    onPressed: () => Get.to(() => const ProfileScreen())),
                const SizedBox(
                  height: TSizes.spaceBtwnSections,
                ),
              ],
            )),

            ///  -- BODY
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// --ACCOUNT SETTINGS
                  const TSectionHeading(
                    title: 'Account Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  TSettingsMenuTile(
                    title: "My Addresses",
                    subTitle: 'Set shopping delivery address',
                    icon: Iconsax.safe_home,
                    onTap: () => Get.to(() => const UserAddressScreen()),
                  ),
                  TSettingsMenuTile(
                    title: "My Cart",
                    subTitle: 'Add,remove product and move to checkout',
                    icon: Iconsax.shopping_cart,
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    title: "My Orders",
                    subTitle: 'In-progress and completed orders',
                    icon: Iconsax.bag_tick,
                    onTap: () => Get.to(() => const OrderScreen()),
                  ),
                  TSettingsMenuTile(
                    title: "Banck Account",
                    subTitle: 'Withdraw balance to registered bank account',
                    icon: Iconsax.bank,
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    title: "My Coupons",
                    subTitle: 'List of all the discounted coupons',
                    icon: Iconsax.discount_shape,
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    title: "Notification",
                    subTitle: 'Set any kind of notification message',
                    icon: Iconsax.notification,
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    title: "Account Privacy",
                    subTitle: 'Manage data usage and connected accounts',
                    icon: Iconsax.security_card,
                    onTap: () {},
                  ),

                  ///APP SETTINGS

                  const SizedBox(
                    height: TSizes.spaceBtwnSections,
                  ),
                  const TSectionHeading(
                    title: 'App Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  const TSettingsMenuTile(
                      title: 'Load Data',
                      subTitle: 'Upload data to your cloud firesbase',
                      icon: Iconsax.document_upload),
                  TSettingsMenuTile(
                    title: 'Geolocation',
                    subTitle: 'set Recommendation based on location',
                    icon: Iconsax.location,
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  TSettingsMenuTile(
                    title: 'Safe mode',
                    subTitle: 'Check result is safe for all ages',
                    icon: Iconsax.security_user,
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  TSettingsMenuTile(
                    title: 'HD Image quality',
                    subTitle: 'Set image quality to be seen',
                    icon: Iconsax.image,
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),

                  ///ACCOUNT LOGOUT
                  const SizedBox(
                    height: TSizes.spaceBtwnSections,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                        onPressed: () =>
                            AuthenticationRepository.instance.logout(),
                        child: const Text('Logout')),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwnSections * 2.5,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
