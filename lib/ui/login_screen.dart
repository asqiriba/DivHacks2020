import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_login/flutter_login.dart';
import 'package:col_net/ui/web_screen.dart';
import 'main_screen.dart';

const users = const {
  'e@e.e': 'eee',
  'user@mail.com': 'pass',
  'test@test.edu': 'test',
  'svp2128@columbia.edu': 'shivanipatel',
  'mrm8273@columbia.edu': 'edu',
};

class LoginScreen extends StatelessWidget {
  Duration get loginTime => Duration(milliseconds: 2250);

  @override
  Widget build(BuildContext context) {
    Future nextPage() {
      Timer(Duration(seconds: 3), () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => MainScreen(),
        ));
      });
    }

    Future<String> _authUser(LoginData data) {
      print('Name: ${data.name}, Password: ${data.password}');
      return Future.delayed(loginTime).then((_) {
        if (!users.containsKey(data.name)) {
          return 'Username not exists';
        }
        if (users[data.name] != data.password) {
          return 'Password does not match';
        }
        return null;
      });
    }

    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        heroTag: null,
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
        backgroundColor: Color(0xffff5733),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) => SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: HelpScreen(),
                    ),
                  ));
        },
      ),
      body: FlutterLogin(
        logoTag: 'x',
        titleTag: 'e',
        title: '',
        logo: 'assets/images/logo_main.png',
        onLogin: _authUser, //Implement login function here.
        onSignup: _authUser, //Implement signup function here.
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
