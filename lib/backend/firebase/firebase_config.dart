import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCvvwhjmrxZLeVaQw9r6SxaR_3qxXnQeuU",
            authDomain: "emcapp-1wa35k.firebaseapp.com",
            projectId: "emcapp-1wa35k",
            storageBucket: "emcapp-1wa35k.appspot.com",
            messagingSenderId: "227046665622",
            appId: "1:227046665622:web:57516ccd8edc87da4001b7"));
  } else {
    await Firebase.initializeApp();
  }
}
