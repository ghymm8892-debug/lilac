import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBg-Jtn6hmAFC2TCeXJXddC6B_Vdje5rZg",
            authDomain: "anything-a4953.firebaseapp.com",
            projectId: "anything-a4953",
            storageBucket: "anything-a4953.firebasestorage.app",
            messagingSenderId: "967348753065",
            appId: "1:967348753065:web:da92f881d7485cf9f90fb8",
            measurementId: "G-S0XH5GC62Q"));
  } else {
    await Firebase.initializeApp();
  }
}
