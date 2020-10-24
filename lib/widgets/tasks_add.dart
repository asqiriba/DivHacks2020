import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:col_net/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  String newTitle;
  CircleAvatar newProfile = CircleAvatar(
    backgroundImage: NetworkImage(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQYW_wPI6R9IH7aXVGkpZ1aDDKrNLhRe-Rxiw&usqp=CAU',
    ),
    radius: 20,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add New Post',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.deepPurple,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTitle = newText;
              },
            ),
            SizedBox(
              height: 5,
            ),
            FlatButton(
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.deepPurple,
              onPressed: () {
                Provider.of<TaskData>(context, listen: false).addTask(
                    newTitle,
                    Stack(
                      children: [
                        newProfile,
                        Positioned(
                          child: CircleAvatar(
                            backgroundColor: Colors.lightGreen,
                            radius: 5,
                          ),
                          right: 0,
                          top: 30,
                        ),
                      ],
                    ));
                Navigator.pop(context);
              },
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
      ),
    );
  }
}
