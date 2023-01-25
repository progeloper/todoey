import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/taskListTile.dart';

class TaskListView extends StatefulWidget {
  @override
  State<TaskListView> createState() => _TaskListViewState();
}

class _TaskListViewState extends State<TaskListView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskListTile(
              taskTitle: task.taskText,
              isChecked: task.isDone,
              checkboxCallback: (checkboxState) {
                taskData.updateTask(index);
              },
              onLongPressCallback: () {
                taskData.deleteTask(index);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
