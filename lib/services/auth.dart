import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  /* // final _auth = FirebaseAuth.instance.authStateChanges().listen((User user) {
  //   if (user == null) {
  //     print('signOut');
  //   }
  //   print('signIn');
  // });*/
  final auth = FirebaseAuth.instance;

  Future<UserCredential> signUp(String email, String password) async {
    final userCredential = await auth.createUserWithEmailAndPassword(
        email: email, password: password);
    return userCredential;
  }

  Future<UserCredential> signIn(String email, String password) async {
    final userCredential =
        await auth.signInWithEmailAndPassword(email: email, password: password);
    return userCredential;
  }
}
