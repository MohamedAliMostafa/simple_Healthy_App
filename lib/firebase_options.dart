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
    apiKey: 'AIzaSyDSPT8m52WVG7_zJmWqC6NtLm509784uuo',
    appId: '1:338389382654:web:8f8b047abbafa72e45bcaf',
    messagingSenderId: '338389382654',
    projectId: 'todo-b48ef',
    authDomain: 'todo-b48ef.firebaseapp.com',
    storageBucket: 'todo-b48ef.appspot.com',
    measurementId: 'G-RWC37N3TSH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBj3uYp2OFzdxDzeWp-fRwGmt1d3bbl0Sk',
    appId: '1:338389382654:android:354c943bb0bb9c6545bcaf',
    messagingSenderId: '338389382654',
    projectId: 'todo-b48ef',
    storageBucket: 'todo-b48ef.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDXeWA6nREKWVX7YnGTypG4J4gDdWmaB70',
    appId: '1:338389382654:ios:7736e801ed6f38ca45bcaf',
    messagingSenderId: '338389382654',
    projectId: 'todo-b48ef',
    storageBucket: 'todo-b48ef.appspot.com',
    iosClientId: '338389382654-0b7g54ggv7i2moh87slbg9cgk7fb8rd9.apps.googleusercontent.com',
    iosBundleId: 'com.example.healthy',
  );
}
