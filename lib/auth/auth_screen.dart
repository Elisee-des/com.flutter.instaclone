import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:instaclone/screens/login_screen.dart';
import 'package:instaclone/screens/signup_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool a = true;
  void go() {
    setState(() {
      a =!a;
    });
  }
  @override
  Widget build(BuildContext context) {
    if(a) {
      return LoginScreen(go);
    } else {
      return SignupScreen(go);
    }
  }
}