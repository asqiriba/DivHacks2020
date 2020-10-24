import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Stack taskImage;
  final Function checkboxCallback;
  final Function onLongPressCallback;

  TaskTile(
      {this.isChecked,
      this.taskTitle,
      this.taskImage,
      this.checkboxCallback,
      this.onLongPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: taskImage,
      title: Text(
        taskTitle,
        style: TextStyle(
          color: Colors.deepPurple,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        focusColor: Colors.deepPurple,
        value: isChecked,
        onChanged: checkboxCallback,
        activeColor: Colors.deepPurple,
      ),
      onLongPress: onLongPressCallback,
    );
  }
}
