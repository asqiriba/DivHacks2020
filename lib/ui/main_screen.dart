import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TypewriterAnimatedTextKit printSlogan() {
      return TypewriterAnimatedTextKit(
          speed: Duration(milliseconds: 2000),
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

    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
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
                      child: SizedBox(),
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
                  CircleAvatar(
                    child: Icon(
                      Icons.list,
                      size: 35,
                      color: Colors.lightBlueAccent,
                    ),
                    backgroundColor: Colors.white,
                    radius: 30,
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
                  Text('Content here :D'),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: SizedBox(),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
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
