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
    apiKey: 'AIzaSyB6xtowxLWqeWoZhweUK1Or_e7q85s7v4U',
    appId: '1:328662388400:web:2e813fb1b5e5511db3b575',
    messagingSenderId: '328662388400',
    projectId: 'instaclone-2aece',
    authDomain: 'instaclone-2aece.firebaseapp.com',
    storageBucket: 'instaclone-2aece.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDEmZvrq6poPZWDwgn6xffs3oCKg-PlqLs',
    appId: '1:328662388400:android:5a769cb5e93a2e33b3b575',
    messagingSenderId: '328662388400',
    projectId: 'instaclone-2aece',
    storageBucket: 'instaclone-2aece.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDaSm6ADw7gJBs-o63yq5UHxXme8HbBqyA',
    appId: '1:328662388400:ios:68f58f5e26cfff93b3b575',
    messagingSenderId: '328662388400',
    projectId: 'instaclone-2aece',
    storageBucket: 'instaclone-2aece.appspot.com',
    iosBundleId: 'com.example.instaclone',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDaSm6ADw7gJBs-o63yq5UHxXme8HbBqyA',
    appId: '1:328662388400:ios:68f58f5e26cfff93b3b575',
    messagingSenderId: '328662388400',
    projectId: 'instaclone-2aece',
    storageBucket: 'instaclone-2aece.appspot.com',
    iosBundleId: 'com.example.instaclone',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyB6xtowxLWqeWoZhweUK1Or_e7q85s7v4U',
    appId: '1:328662388400:web:18f702d1eb958af8b3b575',
    messagingSenderId: '328662388400',
    projectId: 'instaclone-2aece',
    authDomain: 'instaclone-2aece.firebaseapp.com',
    storageBucket: 'instaclone-2aece.appspot.com',
  );
}
