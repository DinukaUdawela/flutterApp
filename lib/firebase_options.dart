// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;


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
    apiKey: 'AIzaSyBhSj7EGe1sLsWljyEbYLRfesBptp1k0LE',
    appId: '1:440838576169:web:0f57c2be0e89cb7f1ae438',
    messagingSenderId: '440838576169',
    projectId: 'mytarget-6aba1',
    authDomain: 'mytarget-6aba1.firebaseapp.com',
    storageBucket: 'mytarget-6aba1.appspot.com',
    measurementId: 'G-K040XD3B65',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDJiUg5lFD_9UpIaVCPQC4-H_zVR-AHp6o',
    appId: '1:440838576169:android:51e9006788b387071ae438',
    messagingSenderId: '440838576169',
    projectId: 'mytarget-6aba1',
    storageBucket: 'mytarget-6aba1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCXgrz8gYhgHYTwSfUdJ6W6KnZxQp3t6wU',
    appId: '1:440838576169:ios:b1866aa425b5c6e71ae438',
    messagingSenderId: '440838576169',
    projectId: 'mytarget-6aba1',
    storageBucket: 'mytarget-6aba1.appspot.com',
    iosBundleId: 'com.example.mytargetx',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCXgrz8gYhgHYTwSfUdJ6W6KnZxQp3t6wU',
    appId: '1:440838576169:ios:99b769fb048470a41ae438',
    messagingSenderId: '440838576169',
    projectId: 'mytarget-6aba1',
    storageBucket: 'mytarget-6aba1.appspot.com',
    iosBundleId: 'com.example.mytargetx.RunnerTests',
  );
}
