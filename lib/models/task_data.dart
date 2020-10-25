import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(
        name:
            'Grayson G\nHi, I\'m a freshmen, and I can\'t concentrate in my dorm room in John Jay. Are there any good quiet places to study on campus?\n\n\tHi Grayson! One of my favorite quiet places to study is the second floor of Noco (Northwest Corner Building). It is right next to Pupin Hall, and the library is to the left when you enter. The first floor allows you to quietly talk, but the second floor is completely silent. There is a coffee shop located in the building as well! Definitely worth checking out.\n\n',
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
        name:
            'Manny D\nI\'m a senior right now majoring in computer science. I have a full-time offer as a Front End Developer, but I don\'t know if I should pursue further education. I feel like I have taken a lot of the master-level coursework offered by Columbia. Is any current Master student in CS willing to have a chat to help me decide on what I should do?\n',
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
        name:
            'Cameron J\nHow do I start a research project with a professor? I know it\'s typical to ask professors that you are familar with, but none of my professors are doing research that I am interested in.\n',
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
        name:
            'Harry M\nI\'m trying to get an internship in Data Science for the summer, but I\'m not sure how this process works and what their expectations of me are exactly. Any help would be appreciated.\n',
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
        name:
            'James W\nI\'m a sophomore right now and we have to declare our majors soon, but I\'m really torn between computer science and pre-med. I\'m currently in AP and biology, and it\'s really difficult, but I am unsure of what to do. Is it possible to double major in these fields even though they are completely different? Please advise.\n',
        isDone: false,
        img: Stack(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  'https://st3.depositphotos.com/6894706/16408/v/600/depositphotos_164082096-stock-video-portrait-of-a-cute-simple.jpg\n'),
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
        name:
            'Zeena S\nI\'m new to CS, but I\'m loving it so far. I\'m in 1004 with Prof. Cannon, and I was wondering what CS clubs are available on campus.\n',
        isDone: false,
        img: Stack(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  'https://bloximages.chicago2.vip.townnews.com/tucson.com/content/tncms/assets/v3/editorial/5/cd/5cdbda20-5959-55f5-a4ea-62934a5a8e75/5a3c834c2a282.image.jpg?resize=1200%2C893'),
              backgroundColor: Colors.lightGreen,
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
        name:
            'Jailyn B\nHi, I\'m a vegan, and I am looking to find good stable food options. Are there any good vegan friendly places? I find that Barnard\'s dining halls are more inclusive, and I was wondering if there was any good places on Columbia\'s main campus.\n',
        isDone: false,
        img: Stack(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  'https://image.shutterstock.com/image-photo/young-ginger-student-woman-making-260nw-1559770097.jpg'),
              backgroundColor: Colors.lightGreen,
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
        name:
            'Katherine R\nI\'m having trouble navigating through all of the different websites/logins for Columbia. I have heard that Vergil is used a lot but my advisor said to use the directory of classes?\n',
        isDone: false,
        img: Stack(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  'https://previews.123rf.com/images/kiuikson/kiuikson1308/kiuikson130800073/21459822-beautiful-woman-working-on-laptop.jpg'),
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
