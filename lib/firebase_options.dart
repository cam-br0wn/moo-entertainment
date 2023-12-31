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
    apiKey: 'AIzaSyA81P11bCLCOO6GrFBR9VUSJXhS8I5QUtA',
    appId: '1:289373549402:web:deddf85a8cb82240efb963',
    messagingSenderId: '289373549402',
    projectId: 'moo-entertainment',
    authDomain: 'moo-entertainment.firebaseapp.com',
    storageBucket: 'moo-entertainment.appspot.com',
    measurementId: 'G-9PM7GC28SW',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAhCVDZHT7c1cby0hiRvW-FUIAqZ7_pK98',
    appId: '1:289373549402:android:413d270b40680537efb963',
    messagingSenderId: '289373549402',
    projectId: 'moo-entertainment',
    storageBucket: 'moo-entertainment.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBDioixZ0T2pLfENe65EQ97VaiCvh1VAk0',
    appId: '1:289373549402:ios:6a0b2f6dd264ba3eefb963',
    messagingSenderId: '289373549402',
    projectId: 'moo-entertainment',
    storageBucket: 'moo-entertainment.appspot.com',
    iosBundleId: 'com.example.mooEnt',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBDioixZ0T2pLfENe65EQ97VaiCvh1VAk0',
    appId: '1:289373549402:ios:c36177c8ccb9a2f4efb963',
    messagingSenderId: '289373549402',
    projectId: 'moo-entertainment',
    storageBucket: 'moo-entertainment.appspot.com',
    iosBundleId: 'com.example.mooEnt.RunnerTests',
  );
}


