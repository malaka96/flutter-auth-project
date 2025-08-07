import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> signInAnonymously() async {
    try {
      final userCredentail = await _auth.signInAnonymously();
      final user = userCredentail.user;

      if (user != null) {
        print('singed in anonmymously ${user.uid}');
      }
    } catch (error) {
      print('error sing in anonymously $error');
    }
  }

  User? getCurrentUser() {
    return _auth.currentUser;
  }
}
