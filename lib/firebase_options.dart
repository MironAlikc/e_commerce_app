// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        return macos;
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
    apiKey: 'AIzaSyDyopC6pOPx4N1Yx3E5im2TC27xbSyNdCQ',
    appId: '1:72252616939:web:af57a74e87f541ce398eae',
    messagingSenderId: '72252616939',
    projectId: 'ecommerce-app-5ca31',
    authDomain: 'ecommerce-app-5ca31.firebaseapp.com',
    storageBucket: 'ecommerce-app-5ca31.appspot.com',
    measurementId: 'G-LL101YDNJS',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAV00EjYTOcJlw1YIZF6jqqTmGKczMcBVo',
    appId: '1:72252616939:android:41a9089b2c5ed3c4398eae',
    messagingSenderId: '72252616939',
    projectId: 'ecommerce-app-5ca31',
    storageBucket: 'ecommerce-app-5ca31.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB5t4UlLbjzr9Y2lOvPa9xahwiiv79wIug',
    appId: '1:72252616939:ios:55fea7aa5506c577398eae',
    messagingSenderId: '72252616939',
    projectId: 'ecommerce-app-5ca31',
    storageBucket: 'ecommerce-app-5ca31.appspot.com',
    iosBundleId: 'com.example.eCommerceApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB5t4UlLbjzr9Y2lOvPa9xahwiiv79wIug',
    appId: '1:72252616939:ios:ebfba3b593624d6a398eae',
    messagingSenderId: '72252616939',
    projectId: 'ecommerce-app-5ca31',
    storageBucket: 'ecommerce-app-5ca31.appspot.com',
    iosBundleId: 'com.example.eCommerceApp.RunnerTests',
  );
}
