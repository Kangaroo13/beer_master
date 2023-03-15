import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC2MHBQjhF6TKxOoTsieOqMw3FXvQGRo08",
            authDomain: "appbeer-5360.firebaseapp.com",
            projectId: "appbeer-5360",
            storageBucket: "appbeer-5360.appspot.com",
            messagingSenderId: "633249459201",
            appId: "1:633249459201:web:0dccab90ed619e62e5e400"));
  } else {
    await Firebase.initializeApp();
  }
}
