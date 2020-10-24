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

    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        label: Text(
          'About us',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        icon: Icon(
          Icons.assignment_ind,
          color: Colors.white,
        ),
        backgroundColor: Colors.deepPurpleAccent,
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) => SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: SizedBox(),
                    ),
                  ));
        },
      ),
      body: FlutterLogin(
        title: 'ColNet',
        //TODO: Upload a logo.
        logo: 'assets/images/X.png',
        onLogin: (_) => nextPage(), //Implement login function here.
        onSignup: (_) => nextPage(), //Implement signup function here.
        onSubmitAnimationCompleted: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => MainScreen(),
          ));
        },
        onRecoverPassword: (_) => nextPage(),
      ),
    );
  }
}
