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
                'https://www.startpage.com/av/proxy-image?piurl=https%3A%2F%2Fencrypted-tbn0.gstatic.com%2Fimages%3Fq%3Dtbn%3AANd9GcRiLG2M7kxjqWHBlD8D-XIAwBTM8xWCaVxvoiigW8zr7HUAeOo%26s&sp=1603569172T31be501ac60e1af42fbea794a8f6a2c7d10fe71172120d6b1f0a5783f9915108',
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
                  'https://www.startpage.com/av/proxy-image?piurl=https%3A%2F%2Fencrypted-tbn0.gstatic.com%2Fimages%3Fq%3Dtbn%3AANd9GcTkiNJYd7lTZHY7-GXea4tzINABARjckKJE2BoaKXEKGSjbT9Tw%26s&sp=1603569172Tc2298211c2976c1cb98dbcd6e1f0ad7ab0d4c1dce585495a8c71d954dd2c5b77'),
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
                  'https://www.startpage.com/av/proxy-image?piurl=https%3A%2F%2Fencrypted-tbn0.gstatic.com%2Fimages%3Fq%3Dtbn%3AANd9GcRSlAgeiTss4hIfrzld4vOe1l6kewd-mMhwbuZgH7L9ODLar_g%26s&sp=1603569172T75607b05a641a4b24e39eb8328db78cb1aa124d2ab4fd23e84b35e46aed8cc1a'),
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
                  'https://www.startpage.com/av/proxy-image?piurl=https%3A%2F%2Fencrypted-tbn0.gstatic.com%2Fimages%3Fq%3Dtbn%3AANd9GcScNyA1iys-tTW_hUsjDNumUZuuV1YLJ803tmFG9dQzvHHq-U4%26s&sp=1603569172T1ec353bc6cdfebe118207f1f9f317805839a3a7f1ddba58949a4e4786cab2bcc'),
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
                  'https://www.startpage.com/av/proxy-image?piurl=https%3A%2F%2Fencrypted-tbn0.gstatic.com%2Fimages%3Fq%3Dtbn%3AANd9GcTKtIIsmh9DUSi8FwRBw_FV6ZMkSchyE4SJZDGAf9CBlxrwnpc%26s&sp=1603569315T66286f9bdbe361e9c6542f2a15c4547fcf9c64b6c9402badc5fefc4b4578820d'),
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
