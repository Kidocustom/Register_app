// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyB04K_ObCUQxvtnrantZC4Qm88xDbqSkAU',
    appId: '1:337604136805:web:19bbce72d2bb5896249b8c',
    messagingSenderId: '337604136805',
    projectId: 'ecommerceapp-f7c05',
    authDomain: 'ecommerceapp-f7c05.firebaseapp.com',
    storageBucket: 'ecommerceapp-f7c05.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBYq6KxdHddrlnllAoy3duMOXMCRt8ITVQ',
    appId: '1:337604136805:android:5d2b6db492c90521249b8c',
    messagingSenderId: '337604136805',
    projectId: 'ecommerceapp-f7c05',
    storageBucket: 'ecommerceapp-f7c05.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyANgR-lxI5N13dTxRDr8k4vqkgcZgXw0-8',
    appId: '1:337604136805:ios:84526a2e39d55a4f249b8c',
    messagingSenderId: '337604136805',
    projectId: 'ecommerceapp-f7c05',
    storageBucket: 'ecommerceapp-f7c05.appspot.com',
    androidClientId: '337604136805-7qo88h7mm3b9empkft5sttdp7o6m9vc1.apps.googleusercontent.com',
    iosClientId: '337604136805-2gjgsorea09v4u6pk25q3cn0oqu2tgea.apps.googleusercontent.com',
    iosBundleId: 'com.example.eCommerce',
  );

}