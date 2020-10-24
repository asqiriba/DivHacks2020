import 'package:flutter/material.dart';
import 'tasks_tile.dart';
import 'package:provider/provider.dart';
import 'package:col_net/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskDataObject, child) {
        return ListView.builder(
          itemCount: taskDataObject.taskCount,
          itemBuilder: (context, index) {
            final task = taskDataObject.tasks[index];
            return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              taskImage: task.img,
              checkboxCallback: (checkboxState) {
                taskDataObject.updateTask(task);
              },
              onLongPressCallback: (){
//                taskDataObject.removeTask(task);
                Provider.of<TaskData>(context,listen: false).removeTask(index);
              },
            );
          },
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        );
      },
    );
  }
}