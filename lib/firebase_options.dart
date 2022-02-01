// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
    // ignore: missing_enum_constant_in_switch
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
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBoBJ_hphIW4_d7_IQ2GTIbCW4G1wXIKMU',
    appId: '1:949322045058:web:38b023f1c40dc66760c69b',
    messagingSenderId: '949322045058',
    projectId: 'connected-43298',
    authDomain: 'connected-43298.firebaseapp.com',
    storageBucket: 'connected-43298.appspot.com',
    measurementId: 'G-BGC5S5S7MW',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBrdcvf9AGzXEooXLT9gtc-ofb8t7K1qGE',
    appId: '1:949322045058:android:dce3f0ec47f1c6bc60c69b',
    messagingSenderId: '949322045058',
    projectId: 'connected-43298',
    storageBucket: 'connected-43298.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBqvISYzjjYyTEHT8Gvls9Ed_HEuTZ5DdI',
    appId: '1:949322045058:ios:8b17894f654205ff60c69b',
    messagingSenderId: '949322045058',
    projectId: 'connected-43298',
    storageBucket: 'connected-43298.appspot.com',
    iosClientId: '949322045058-57fm43nrajfgd2qnko1147jrevtb330m.apps.googleusercontent.com',
    iosBundleId: 'com.example.connexion',
  );
}