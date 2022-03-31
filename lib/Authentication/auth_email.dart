import 'package:firebase_auth/firebase_auth.dart';

class AuthEmail {
  static FirebaseAuth _auth = FirebaseAuth.instance;

  static void createNewUser(
      {required String email, required String password}) async {
    try {
      var user = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      print('USERCREDENTIAL ====> ${user.user!.uid}');
    } catch (e) {
      print('CREATE USER ERROR =======> ');
      print(e);
    }
  }

  static void loginWithEmail(
      {required String email, required String password}) async {
    try {
      var user = await _auth.signInWithEmailAndPassword(
          email: email, password: password);

      print('USERCREDENTIAL ====> ${user.user!.uid}');
    } catch (e) {
      print('LOGIN USER ERROR =======> ');
      print(e);
    }
  }
}
