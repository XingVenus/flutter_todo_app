import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider/task_provider.dart';
import 'screens/task_list_screen.dart';
//git rebase --abort 
/// The main entry point for the app.
///
/// This function is called when the app is launched, and it's where the
/// app's widget tree is built.
///
/// The widget tree is built by calling the [TodoApp] constructor, which
/// creates a [MaterialApp] with a [TaskListScreen] as its home. The
/// [TaskListScreen] is wrapped in a [ChangeNotifierProvider] that provides
/// the app's [TaskProvider] to all of its descendants.
void main() {
  runApp(TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

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