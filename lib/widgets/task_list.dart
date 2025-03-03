import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/task_provider.dart';
import 'task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(
      builder: (context, taskProvider, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskProvider.tasks[index];
            return TaskTile(
              taskTitle: task.title,
              isChecked: task.isDone,
              checkboxCallback: (checkboxState) {
                taskProvider.updateTask(task);
              },
              longPressCallback: () {
                taskProvider.deleteTask(task);
              },
            );
          },
          itemCount: taskProvider.taskCount,
        );
      },
    );
  }
}