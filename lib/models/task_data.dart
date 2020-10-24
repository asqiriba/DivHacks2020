import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(
        name: 'Post 1 (Already taken if lineThrough)',
        isDone: true,
        img: Stack(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                'https://d2zcsajde7b23y.cloudfront.net/s/c1c475d3b744e7f2aa5777ab4e352e445d685c41.jpg',
              ),
              backgroundColor: Colors.transparent,
            ),
            Positioned(
              child: CircleAvatar(
                backgroundColor: Colors.lightGreen,
                radius: 5,
              ),
              right: 0,
              top: 30,
            ),
          ],
        )),
    Task(
        name: 'Post 2',
        isDone: false,
        img: Stack(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  'https://arc-anglerfish-arc2-prod-spectator.s3.amazonaws.com/public/AP6XH4OFYNFULIK7N3PVVUXKOE.jpg'),
              backgroundColor: Colors.transparent,
            ),
            Positioned(
              child: CircleAvatar(
                backgroundColor: Colors.lightGreen,
                radius: 5,
              ),
              right: 0,
              top: 30,
            ),
          ],
        )),
    Task(
        name: 'Post 3',
        isDone: false,
        img: Stack(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  'https://dailynorthwestern.com/wp-content/uploads/2019/01/ABROAD-DavidLee-WEB.jpg'),
              backgroundColor: Colors.transparent,
            ),
            Positioned(
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 5,
              ),
              right: 0,
              top: 30,
            ),
          ],
        )),
    Task(
        name: 'Post 4',
        isDone: false,
        img: Stack(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  'https://dailyillini.com/wp-content/uploads/2018/02/A1_Visa.jpg'),
              backgroundColor: Colors.transparent,
            ),
            Positioned(
              child: CircleAvatar(
                backgroundColor: Colors.lightGreen,
                radius: 5,
              ),
              right: 0,
              top: 30,
            ),
          ],
        )),
    Task(
        name: 'Post 5',
        isDone: false,
        img: Stack(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  'https://st3.depositphotos.com/6894706/16408/v/600/depositphotos_164082096-stock-video-portrait-of-a-cute-simple.jpg'),
              backgroundColor: Colors.transparent,
            ),
            Positioned(
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 5,
              ),
              right: 0,
              top: 30,
            ),
          ],
        )),
  ];

  int get taskCount => _tasks.length;

  void addTask(String newTask, Stack newImg) {
    _tasks.add(Task(name: newTask, img: newImg));
    notifyListeners();
  }

  void removeTask(int i) {
    _tasks.removeAt(i);
    notifyListeners();
  }

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }
}
