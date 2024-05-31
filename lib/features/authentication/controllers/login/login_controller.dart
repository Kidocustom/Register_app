import 'package:e_commerce/common/widgests/network/network_manager.dart';
import 'package:e_commerce/data/repositories/repositories.authentication/authentication_repository.dart';
import 'package:e_commerce/features/personalization/controllers/user_controller.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/popups/full_screen_loader.dart';
import 'package:e_commerce/utils/popups/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  // VARIABLES
  final rememberMe =
      false.obs; // tuggleable remember me fuction to save users data
  final hidePassword = true.obs; // Observable for hiding / showing Password
  final localStorage = GetStorage(); //To store some information about the user
  final email = TextEditingController(); // Controller for email input
  final password = TextEditingController(); // Controller for password input
  GlobalKey<FormState> loginFormKey =
      GlobalKey<FormState>(); // Form Key for form validation
  final userController = Get.put(UserController());

  @override
  void onInit() {
    email.text = localStorage.read('REMEMBER_ME_EMAIL') ?? "";
    password.text = localStorage.read('REMEMBER_ME_PASSWORD') ?? "";
    super.onInit();
  }

  /// -- EMAIL & PASSWORD SIGNIN
  Future<void> emailAndPasswordSignIn() async {
    try {
      //Start Loading
      TFullScreenLoader.openLoadingDialog(
          'Logging you in...', TImages.docerAnimation);

      // CHECK INTERNET CONNECTIVITY
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        return;
      }
      // FORM VALIDATION
      if (!loginFormKey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();
        return;
      }
      // SAVE DATA IF REMEMBER ME IS SELECTED
      if (rememberMe.value) {
        localStorage.write('REMEMBER_ME_EMAIL', email.text.trim());
        localStorage.write('REMEMBER_ME_PASSWORD', password.text.trim());
      }

      // LOGIN USER USING EMAIL & PASSWORD AUTHENTICATION

      final userCredentials = await AuthenticationRepository.instance
          .loginWithEmailAndPassword(email.text.trim(), password.text.trim());

      // REMOVE LOADER
      TFullScreenLoader.stopLoading();

      // REDIRECT
      AuthenticationRepository.instance.screenRedirect();
    } catch (e) {
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
    }
  }

  /// -- Google SignIn Authentication
  Future<void> googleSignIn() async {
    try {
      // Start Loading
      TFullScreenLoader.openLoadingDialog(
          'Logging in you in...', TImages.docerAnimation);

      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        return;
      }

      // Google Authentication
      final userCredentials =
          await AuthenticationRepository.instance.signInWithGoogle();

      // Save User Records
      await userController.saveUserRecord(userCredentials);

      // Remove loader
      TFullScreenLoader.stopLoading();

      //Redirect User
      AuthenticationRepository.instance.screenRedirect();
    } catch (e) {
      // Remove loader
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
    }
  }
}
