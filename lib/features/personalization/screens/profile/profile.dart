import 'package:e_commerce/common/widgests/images/t_circular_image.dart';
import 'package:e_commerce/common/widgests/login_signup/app_bar/app_bar.dart';
import 'package:e_commerce/common/widgests/texts/section_heading.dart';
import 'package:e_commerce/features/personalization/controllers/user_controller.dart';
import 'package:e_commerce/features/personalization/screens/profile/change_name.dart';
import 'package:e_commerce/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:e_commerce/common/widgests/shimmers/shimmer.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Profile'),
        showBackArrow: true,
      ),

      /// -- BODY
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// -- Profile picture
              Column(
                children: [
                  Obx(() {
                    final networkImage = controller.user.value.profilePicture;
                    final image =
                        networkImage.isNotEmpty ? networkImage : TImages.user;

                    return controller.imageUploading.value
                        ? const TShimmerEffect(
                            width: 80,
                            height: 80,
                            radius: 80,
                          )
                        : TCircularImage(
                            image: image,
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                            isNetworkImage: networkImage.isNotEmpty,
                          );
                  }),
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () => controller.uploadUserProfilePicture(),
                      child: const Text('Change Profile Picture'),
                    ),
                  ),

                  /// -- DIVIDER
                  const SizedBox(
                    height: TSizes.spaceBtwItems / 2,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),

                  /// HEADING PROFILE INFO
                  const TSectionHeading(
                    title: 'Profile Information',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  TProfileMenu(
                    title: 'Name',
                    value: controller.user.value.fullName,
                    onPressed: () => Get.to(() => const ChangeName()),
                  ),
                  TProfileMenu(
                      title: 'Username',
                      value: controller.user.value.username,
                      onPressed: () {}),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),

                  /// -- HEADING PERSONAL INFO
                  const TSectionHeading(
                    title: 'Personal Information',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  TProfileMenu(
                    title: 'User ID',
                    value: controller.user.value.id,
                    onPressed: () {},
                    icon: Iconsax.copy,
                  ),
                  TProfileMenu(
                      title: 'E-Mail',
                      value: controller.user.value.email,
                      onPressed: () {}),
                  TProfileMenu(
                      title: 'Phone Number',
                      value: controller.user.value.phoneNumber,
                      onPressed: () {}),
                  TProfileMenu(
                      title: 'Gender', value: 'Male', onPressed: () {}),
                  TProfileMenu(
                      title: 'Date of Birth(DOB)',
                      value: '27 Jun 1997',
                      onPressed: () {}),
                  const Divider(),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  Center(
                    child: TextButton(
                        onPressed: controller.deleteAccountWarningPopup,
                        child: const Text(
                          'Close Account',
                          style: TextStyle(color: Colors.red),
                        )),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
