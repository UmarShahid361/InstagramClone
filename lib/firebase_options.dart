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
    apiKey: 'AIzaSyApeSeFgVwRMGs4RsM2rOJD2g3rhHuLKY4',
    appId: '1:23026723005:web:e059ea9285383ad4e02fd4',
    messagingSenderId: '23026723005',
    projectId: 'instagram-clone-eb4b4',
    authDomain: 'instagram-clone-eb4b4.firebaseapp.com',
    storageBucket: 'instagram-clone-eb4b4.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAZnHjjpfOz-P4nYvg8zJPMOMEXrK1fiuk',
    appId: '1:23026723005:android:71005507f6f678cce02fd4',
    messagingSenderId: '23026723005',
    projectId: 'instagram-clone-eb4b4',
    storageBucket: 'instagram-clone-eb4b4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAoeMPTtFBPw51WzKOeX7le4G2l5lDa744',
    appId: '1:23026723005:ios:40515759e6ffa434e02fd4',
    messagingSenderId: '23026723005',
    projectId: 'instagram-clone-eb4b4',
    storageBucket: 'instagram-clone-eb4b4.appspot.com',
    iosBundleId: 'com.example.insta',
  );
}
