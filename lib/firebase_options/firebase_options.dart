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
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCvk7oLgnwMHyWbgIWgjzX9P_M4_1p0c1s',
    appId: '1:880566678229:web:4ab8327c5b0e5d952ca85c',
    messagingSenderId: '880566678229',
    projectId: 'my-awesome-login-flutter-bloc',
    authDomain: 'my-awesome-login-flutter-bloc.firebaseapp.com',
    storageBucket: 'my-awesome-login-flutter-bloc.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB0lLRVHRn-KL8qi552U4_2r5Wj6G4vXno',
    appId: '1:880566678229:android:467ab455f97d25632ca85c',
    messagingSenderId: '880566678229',
    projectId: 'my-awesome-login-flutter-bloc',
    storageBucket: 'my-awesome-login-flutter-bloc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC7LrFDBQHWyLO3iPofzGti8FnYbjIOtto',
    appId: '1:880566678229:ios:771db971a37296802ca85c',
    messagingSenderId: '880566678229',
    projectId: 'my-awesome-login-flutter-bloc',
    storageBucket: 'my-awesome-login-flutter-bloc.appspot.com',
    iosClientId:
        '880566678229-hierdl4s5b0f1391t3l6c6c3moep9me7.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseAuthBloc',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC7LrFDBQHWyLO3iPofzGti8FnYbjIOtto',
    appId: '1:880566678229:ios:771db971a37296802ca85c',
    messagingSenderId: '880566678229',
    projectId: 'my-awesome-login-flutter-bloc',
    storageBucket: 'my-awesome-login-flutter-bloc.appspot.com',
    iosClientId:
        '880566678229-hierdl4s5b0f1391t3l6c6c3moep9me7.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseAuthBloc',
  );
}
