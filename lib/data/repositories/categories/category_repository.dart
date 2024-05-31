import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce/features/shop/models/category_models.dart';
import 'package:e_commerce/firebase_storage_service.dart';
import 'package:e_commerce/utils/except/firebase_auth_exceptions.dart';
import 'package:e_commerce/utils/except/platform_exceptions.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class CategoryRepository extends GetxController {
  static CategoryRepository get instance => Get.find();

  // Variables
  final _db = FirebaseFirestore.instance;

  /// Get all categorries
  Future<List<CategoryModel>> getAllCategories() async {
    try {
      final snapshot = await _db.collection('Categories').get();
      final list = snapshot.docs
          .map((document) => CategoryModel.fromSnapshot(document))
          .toList();
      return list;
    } on FirebaseException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }

  /// Get sub Categories

  /// Upload Categories
  Future<void> uploadDummyData(List<CategoryModel> categories) async {
    try {
      // Upload all the Categories along with their images
      final storage = Get.put(TFirebaseStorageService());

      // Loop through each category
      for (var category in categories) {
        // Get ImageData link from the loacl assets
        final file = await storage.getImageDataFromAssets(category.image);

        // Upload image and Get its URL
        final url =
            await storage.uploadImageData('Categories', file, category.name);

        // Assign URL  to category.image attribute
        category.image = url;

        // Store Category in Firestore
        await _db
            .collection("Categories")
            .doc(category.id)
            .set(category.toJson());
      }
    } on FirebaseException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong.Please try again';
    }
  }
}
