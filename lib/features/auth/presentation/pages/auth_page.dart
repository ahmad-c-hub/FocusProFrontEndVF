import 'package:flutter/material.dart';
import 'login_page.dart';
import 'signup_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool _isLoginPage = true;

  @override
  Widget build(BuildContext context) {
    return _isLoginPage
        ? LoginPage(
            onSignUpPressed: () {
              setState(() => _isLoginPage = false);
            },
          )
        : SignUpPage(
            onLoginPressed: () {
              setState(() => _isLoginPage = true);
            },
          );
  }
}