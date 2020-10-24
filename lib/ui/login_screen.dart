import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'main_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future nextPage() {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => MainScreen(),
      ));
    }

    return FlutterLogin(
      title: 'ColNet',
      //TODO: Upload a logo.
      logo: 'assets/images/ecorp.png',
      onLogin: (_) => nextPage(), //Implement login function here.
      onSignup: (_) => nextPage(), //Implement signup function here.
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => MainScreen(),
        ));
      },
      onRecoverPassword: (_) => Future(null),
    );
  }
}
