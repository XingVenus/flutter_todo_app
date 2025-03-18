import 'package:flutter/material.dart';
import '../models/task.dart';

class TaskService {
  final List<Task> _tasks = [];

  List<Task> get tasks => _tasks;

  void addTask(String title) {
    _tasks.add(Task(id: _tasks.length,title: title));
  }

  void updateTask(Task task) {
    task.toggleDone();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
  }
}