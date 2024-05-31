import 'package:e_commerce/app.dart';
import 'package:e_commerce/data/repositories/repositories.authentication/authentication_repository.dart';
import 'package:e_commerce/firebase_options.dart';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  ///widgets Binding
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();

  /// -- GetX lOcall Storage
  await GetStorage.init();

  // Todo : Await Native Splash
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  /// -- Intialize Firebase & Authentication Repository
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((FirebaseApp value) => Get.put(AuthenticationRepository()));

  // Load all the Material Design/ Themes / Localizations / Bindings

  runApp(const App());
}
