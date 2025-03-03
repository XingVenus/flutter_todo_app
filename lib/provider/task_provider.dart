import 'package:flutter/material.dart';
import '../models/task.dart';
import '../services/task_service.dart';

class TaskProvider extends ChangeNotifier {
  final TaskService _taskService = TaskService();

  List<Task> get tasks => _taskService.tasks;

  int get taskCount => _taskService.tasks.length;

  void addTask(String title) {
    _taskService.addTask(title);
    notifyListeners();
  }

  void updateTask(Task task) {
    _taskService.updateTask(task);
    notifyListeners();
  }

  void deleteTask(Task task) {
    _taskService.deleteTask(task);
    notifyListeners();
  }
}