import 'package:e_commerce/features/authentication/screens/login/login.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  ///VARIABLES
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  ///UPDATE CURRENT INDEX WHEN PAGE SCROLL
  void updatePageIndicator(index) => currentPageIndex.value = index;

  ///JUMP TO DOT SELECTED PAGE
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  ///UPDATE CURRENT INDEX & JUMP TO THE NEXT PAGE
  void nextPage() {
    if (currentPageIndex.value == 2) {
      final storage = GetStorage();

      if (kDebugMode) {
        print(
            '===================== GET STORAGE NEXT BUTTON =====================');
        print(storage.read('IsFirstTime'));
      }

      storage.write('IsFirstTime', false);

      if (kDebugMode) {
        print(
            '===================== GET STORAGE NEXT BUTTON =====================');
        print(storage.read('IsFirstTime'));
      }

      Get.offAll(const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  ///UPDATE CURRENT INDEX & JUMP TO THE LAST PAGE
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
