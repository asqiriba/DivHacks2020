import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'main_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future()

    return FlutterLogin(
      title: 'ColNet',
      //TODO: Upload a logo.
      logo: 'assets/images/ecorp.png',
      onLogin: (_) => Future(null), //Implement login function here.
      onSignup: (_) => Future(null), //Implement signup function here.
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => MainScreen(),
        ));
      },
      onRecoverPassword: (_) => Future(null),
    );
  }
}
