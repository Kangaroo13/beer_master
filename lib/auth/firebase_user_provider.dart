import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class AppBeerFirebaseUser {
  AppBeerFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

AppBeerFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<AppBeerFirebaseUser> appBeerFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<AppBeerFirebaseUser>(
      (user) {
        currentUser = AppBeerFirebaseUser(user);
        return currentUser!;
      },
    );
