import 'package:col_net/ui/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/theme.dart';
import 'package:col_net/widgets/tasks_add.dart';
import 'package:col_net/widgets/tasks_list.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TypewriterAnimatedTextKit printSlogan() {
      return TypewriterAnimatedTextKit(
          speed: Duration(milliseconds: 500),
          totalRepeatCount: 4,
          repeatForever: true, //this will ignore [totalRepeatCount]
          pause: Duration(milliseconds: 1000),
          text: [
            "Lending a Helping Hand",
            "Be of Service",
            "Contribute to your Campus Community"
          ],
          textStyle: TextStyle(
              color: Colors.white24,
              fontSize: 32.0,
              fontWeight: FontWeight.bold),
          displayFullTextOnTap: true,
          stopPauseOnTap: true);
    }

    String profilePicture =
        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQYW_wPI6R9IH7aXVGkpZ1aDDKrNLhRe-Rxiw&usqp=CAU';

    CircleAvatar profile({double radius = 40}) {
      return CircleAvatar(
        backgroundImage: NetworkImage(profilePicture),
        radius: radius,
      );
    }

    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        heroTag: LoginThemeHelper.loginTextStyle,
        label: Text(
          'Add',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        icon: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Color(0xFFff5733),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) => SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: AddTaskScreen(),
                    ),
                  ));
        },
      ),
      backgroundColor: Color(0xff900c3e),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding:
                  EdgeInsets.only(top: 50, left: 30, right: 30, bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Stack(
                    children: [
                      profile(),
                      Positioned(
                        child: CircleAvatar(
                          backgroundColor: Colors.lightGreen,
                          radius: 10,
                        ),
                        right: 0,
                        top: 60,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'CloseKnit Community',
                    style: GoogleFonts.staatliches(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.w300),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Welcome to Columbia & Barnard\'s CloseKnit Community. Feel free to post any of your questions, ask for advice on academics, and engage with your peers.',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      FloatingActionButton.extended(
                        elevation: 10,
                        label: Text('Log out',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                        backgroundColor: Color(0xffffc300),
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ));
                        },
                      )
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 50, right: 50, bottom: 5),
                child: Container(
                  child: TasksList(),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                ),
              ),
            ),
            printSlogan(),
          ],
        ),
      ),
    );
  }
}
