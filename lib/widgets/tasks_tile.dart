import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        style: GoogleFonts.notoSans(
          color: Color(0xff571845),
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),

        //style: TextStyle(
        //  color: Color(0xff571845),
        //  decoration: isChecked ? TextDecoration.lineThrough : null,
        //),
      ),
      trailing: Checkbox(
        focusColor: Color(0xffff5733),
        value: isChecked,
        onChanged: checkboxCallback,
        activeColor: Color(0xffff5733),
      ),
      onLongPress: onLongPressCallback,
    );
  }
}
