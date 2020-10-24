import 'package:flutter/material.dart';
import 'package:flutter_login/theme.dart';
import 'package:col_net/widgets/tasks_add.dart';
import 'package:col_net/widgets/tasks_list.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TypewriterAnimatedTextKit printSlogan() {
      return TypewriterAnimatedTextKit(
          speed: Duration(milliseconds: 1000),
          totalRepeatCount: 4,
          repeatForever: true, //this will ignore [totalRepeatCount]
          pause: Duration(milliseconds: 1000),
          text: ["do IT!", "do it RIGHT!", "do it RIGHT NOW!"],
          textStyle: TextStyle(
              color: Colors.white24,
              fontSize: 32.0,
              fontWeight: FontWeight.bold),
          displayFullTextOnTap: true,
          stopPauseOnTap: true);
    }

    String profilePicture =
        'https://www.startpage.com/av/proxy-image?piurl=https%3A%2F%2Fencrypted-tbn0.gstatic.com%2Fimages%3Fq%3Dtbn%3AANd9GcRSlAgeiTss4hIfrzld4vOe1l6kewd-mMhwbuZgH7L9ODLar_g%26s&sp=1603569172T75607b05a641a4b24e39eb8328db78cb1aa124d2ab4fd23e84b35e46aed8cc1a'
    ;

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
        backgroundColor: Colors.deepPurpleAccent,
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
      backgroundColor: Colors.deepPurple,
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
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Info',
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
                        backgroundColor: Colors.deepPurple,
                        onPressed: () => Navigator.pop(context),
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
