import 'package:firebase_auth/firebase_auth.dart';

class Authenticator {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  var email;
  var password;
  Authenticator();
  Future<bool> signIn({required String email, required String password}) async {
    try {
      print(email);
      print(password);
      await _firebaseAuth.signInWithEmailAndPassword(
          email: "patsphelps@outlook.com", password: "12345678");
      return true;
    } on FirebaseAuthException catch (e) {
      print(e.toString());
      return false;
    }
  }

  Future<bool> signUp({required String email, required String password}) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      return true;
    } on FirebaseAuthException catch (e) {
      return false;
    }
  }

  Future<bool> logout() async {
    try {
      await _firebaseAuth.signOut();
      return true;
    } catch (e) {
      return false;
    }
  }
}
