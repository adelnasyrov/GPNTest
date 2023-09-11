import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class LoginController {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  bool _isIconClicked = false;
  bool _obscureText = true;

  void iconClick() {
    _isIconClicked = !_isIconClicked;
    _obscureText = !_obscureText;
  }

  bool icon() {
    return _isIconClicked;
  }

  bool text() {
    return _obscureText;
  }

  void signIn() async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email.text,
        password: password.text,
      );
      print(email.text);
      print(password.text);
      print("User signed in succefully");
      print(userCredential.hashCode);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        print(email.text);
        print(password.text);
        print("Invalid credentials");
      }
    } catch (e) {
      print(e);
    }
  }
}
