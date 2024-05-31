import 'package:e_commerce/common/widgests/network/network_manager.dart';
import 'package:e_commerce/data/repositories/repositories.authentication/authentication_repository.dart';
import 'package:e_commerce/data/repositories/user/user_repository.dart';
import 'package:e_commerce/features/authentication/screens/signup/verify_email.dart';
import 'package:e_commerce/user_model.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/popups/full_screen_loader.dart';
import 'package:e_commerce/utils/popups/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  /// VARIABLES
  final hidePassword = true.obs; // Observable for hiding / showing Password
  final privacyPolicy = false.obs; // Observable for privacy policy acceptance
  final email = TextEditingController(); // Controller for email input
  final lastName = TextEditingController(); // Controller for lastname input
  final username = TextEditingController(); // Controller for uesrname input
  final password = TextEditingController(); // Controller for password input
  final firstName = TextEditingController(); // Controller for firstName input
  final phoneNumber =
      TextEditingController(); // Controller for Phonenumber input
  GlobalKey<FormState> signupFormKey =
      GlobalKey<FormState>(); // Form Key for form validation

  /// -- SIGNUP

  void signup() async {
    try {
      // Start Loading
      TFullScreenLoader.openLoadingDialog(
          'We are processing your information...', TImages.docerAnimation);

      // check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        // Remove loader
        TFullScreenLoader.stopLoading();
        return;
      }

      // Form Vaalidation
      if (!signupFormKey.currentState!.validate()) {
        // Remove loader
        TFullScreenLoader.stopLoading();
        return;
      }

      // Privacy Policy Check
      if (!privacyPolicy.value) {
        TFullScreenLoader.stopLoading();

        TLoaders.warningSnackBar(
            title: 'Accept Privacy Policy',
            message:
                'In order to create account, you must have to read and accept the privacy Policy & Terms or Use.');
        return;
      }
      // Register user in the firebase Authentication & save User data in the firebase
      final userCredential = await AuthenticationRepository.instance
          .registerWithEmailAndPassword(
              email.text.trim(), password.text.trim());

      // Save Authenticated user data in the firebase firestore
      final newUser = UserModel(
        id: userCredential.user!.uid,
        firstName: firstName.text.trim(),
        lastName: lastName.text.trim(),
        username: username.text.trim(),
        email: email.text.trim(),
        phoneNumber: phoneNumber.text.trim(),
        profilePicture: '',
      );

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);

      // Remove loader
      TFullScreenLoader.stopLoading();

      // Show success Message
      TLoaders.successSnackBar(
          title: 'Congratulations',
          message: 'Your accounthas been created! Verify email to continue.');

      // Move to Verify Email Screen
      Get.to(() => VerifyEmailScreen(
            email: email.text.trim(),
          ));
    } catch (e) {
      // Remove loader
      TFullScreenLoader.stopLoading();

      // Show more Generic Error to the User
      TLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }
}
