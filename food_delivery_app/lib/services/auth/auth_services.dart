import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class AuthServices {
  // get instance of the firebase auth
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  // get current user
  User? getCurrentUser() {
    return firebaseAuth.currentUser;
  }

  // sign in

  Future<UserCredential> signInWithEmailPassword(
      String email, String password) async {
    try {
      // sign in with email and password
      UserCredential userCredential = await firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    } catch (e) {
      print(e);
    }
  }

  // sign up

  Future<UserCredential> signUpWithEmailPassword(
      String email, String password) async {
    try {
      // sign in with email and password
      UserCredential userCredential = await firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    } catch (e) {
      print(e);
    }
  }

  // sign out
  Future<void> signOut() async {
    await firebaseAuth.signOut();
  }
}
