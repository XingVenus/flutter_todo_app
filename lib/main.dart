import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider/task_provider.dart';
import 'screens/task_list_screen.dart';

void main() {
  runApp(TodoApp());
}

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskProvider(),
      child: MaterialApp(
        home: TaskListScreen(),
      ),
    );
  }
}