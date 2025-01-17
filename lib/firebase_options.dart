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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyAF68QDTlucS5g9kdMrjtD00RIFB7EowQs',
    appId: '1:778532300966:web:691b1334a27ca85c9fec67',
    messagingSenderId: '778532300966',
    projectId: 'authentication-c1756',
    authDomain: 'authentication-c1756.firebaseapp.com',
    storageBucket: 'authentication-c1756.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD5VPUaStFT5byY5mXgFdmC0GRvHpksuMQ',
    appId: '1:778532300966:android:7865f971aaf9f9059fec67',
    messagingSenderId: '778532300966',
    projectId: 'authentication-c1756',
    storageBucket: 'authentication-c1756.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCfId4Z94Eq3ka68bTIkeah3NnJ1sYWWnE',
    appId: '1:778532300966:ios:25da48792a0864ae9fec67',
    messagingSenderId: '778532300966',
    projectId: 'authentication-c1756',
    storageBucket: 'authentication-c1756.appspot.com',
    iosBundleId: 'com.example.flutterAuthentication',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCfId4Z94Eq3ka68bTIkeah3NnJ1sYWWnE',
    appId: '1:778532300966:ios:25da48792a0864ae9fec67',
    messagingSenderId: '778532300966',
    projectId: 'authentication-c1756',
    storageBucket: 'authentication-c1756.appspot.com',
    iosBundleId: 'com.example.flutterAuthentication',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAF68QDTlucS5g9kdMrjtD00RIFB7EowQs',
    appId: '1:778532300966:web:2a2e126d1d6e40c49fec67',
    messagingSenderId: '778532300966',
    projectId: 'authentication-c1756',
    authDomain: 'authentication-c1756.firebaseapp.com',
    storageBucket: 'authentication-c1756.appspot.com',
  );

}