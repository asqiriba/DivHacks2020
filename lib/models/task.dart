import 'package:flutter/material.dart';

class Task{
  final String name;
  bool isDone;
  Stack img;

  Task({this.name, this.isDone = false, this.img});

  void toggleDone() {
    isDone = !isDone;
  }
}