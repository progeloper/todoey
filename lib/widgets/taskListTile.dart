import 'package:flutter/material.dart';


class TaskListTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function() onLongPressCallback;
  final Function(bool?) checkboxCallback;
  TaskListTile({required this.taskTitle, required this.isChecked, required this.checkboxCallback, required this.onLongPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
          fontSize: 18.0,
          color: Colors.black,
          decoration: isChecked? TextDecoration.lineThrough:TextDecoration.none,
        ),
      ),
      trailing: Checkbox(
        checkColor: Colors.white,
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}



