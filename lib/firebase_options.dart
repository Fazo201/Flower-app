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
    apiKey: 'AIzaSyAER7EfMeFMg9yzHGyyRZ-moDMQj4JJknc',
    appId: '1:171494864225:web:c2a9e07835b9d1141c8120',
    messagingSenderId: '171494864225',
    projectId: 'flower-app-dfc24',
    authDomain: 'flower-app-dfc24.firebaseapp.com',
    storageBucket: 'flower-app-dfc24.appspot.com',
    measurementId: 'G-VMNVY76YYY',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBUzqqiOfb4WluBKmuyRl3j2OuwxDVJvgY',
    appId: '1:171494864225:android:d61f315eaf49fe1d1c8120',
    messagingSenderId: '171494864225',
    projectId: 'flower-app-dfc24',
    storageBucket: 'flower-app-dfc24.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDTJj4x_Qr0KrWiYZVy5Pr9uc4i_7AR3QI',
    appId: '1:171494864225:ios:fa406733fb8ca7881c8120',
    messagingSenderId: '171494864225',
    projectId: 'flower-app-dfc24',
    storageBucket: 'flower-app-dfc24.appspot.com',
    iosBundleId: 'com.fazo.flowerApp',
  );
}