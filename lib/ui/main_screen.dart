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
        'https://www.startpage.com/av/proxy-image?piurl=https%3A%2F%2Fnypost.com%2Fwp-content%2Fuploads%2Fsites%2F2%2F2019%2F08%2Fparkland-shooting-survivor-now-freshman-at-columbia.jpg%3Fquality%3D80%26strip%3Dall&sp=1603565648T85ee78df72dbc1520f66b0792f93889a4e1bb3b3c4fdb5a590cab27ff8fbd242';

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
                    'ColNet',
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
