import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Auth {
  final auth = FirebaseAuth.instance;

  Future<User> signUp(String email, String password) async {
    final userCredential = await auth.createUserWithEmailAndPassword(
        email: email, password: password);
    return userCredential.user;
  }

  Future<User> signIn(String email, String password) async {
    final userCredential =
        await auth.signInWithEmailAndPassword(email: email, password: password);
    return userCredential.user;
  }

//sign in with google
  signInWithGoogle() async {
    print('start auth with google');
    GoogleSignInAccount googleSignIn = await GoogleSignIn().signIn();
    GoogleSignInAuthentication googleAuth = await googleSignIn.authentication;
    print('end auth with google ${googleAuth.accessToken.toString()}');

    final GoogleAuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  Future<UserCredential> signInWithFaceBook() async {
    final LoginResult result = await FacebookAuth.instance.login();
    final FacebookAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(result.accessToken.token);
    return await FirebaseAuth.instance
        .signInWithCredential(facebookAuthCredential);
  }
}
