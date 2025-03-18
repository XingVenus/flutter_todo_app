import 'package:flutter/material.dart';
import '../models/task.dart';
import '../services/task_service.dart';

class TaskProvider extends ChangeNotifier {
  final TaskService _taskService = TaskService();

  List<Task> get tasks => _taskService.tasks;

  int get taskCount => _taskService.tasks.length;

  void addTask(BuildContext context, String title) {
    if (title.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Task title cannot be empty.')),
      );
      return;
    }
    _taskService.addTask(title);
    notifyListeners();
  }

  void updateTask(Task task) {
    _taskService.updateTask(task);
    // notifyListeners() is a method of ChangeNotifier class,
    // which is inherited by TaskProvider.
    // When the state of TaskProvider changes, notifyListeners() is called
    // to notify all the widgets that are listening to this TaskProvider
    // to rebuild themselves.
    notifyListeners();
  }

  void deleteTask(Task task) {
    _taskService.deleteTask(task);
    notifyListeners();
  }
}