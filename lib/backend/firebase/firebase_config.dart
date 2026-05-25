import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD8m8XLUq-EJ8Ja0sdrwfBGnsuaY3yjZYY",
            authDomain: "mainv2-4kh9o9.firebaseapp.com",
            projectId: "mainv2-4kh9o9",
            storageBucket: "mainv2-4kh9o9.firebasestorage.app",
            messagingSenderId: "115164233976",
            appId: "1:115164233976:web:548e9e347e53fec05f7b0d"));
  } else {
    await Firebase.initializeApp();
  }
}
