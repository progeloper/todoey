import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier{
  List<Task> _taskList = [];

  int get taskCount{
    return _taskList.length;
  }
  void addNewTask(String newTask){
    _taskList.add(Task(taskText: newTask));
    notifyListeners();
  }
  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_taskList);
  }

  void updateTask(int index){
    _taskList[index].toggleIsDone();
    notifyListeners();
  }

  void deleteTask(int index){
    _taskList.removeAt(index);
    notifyListeners();
  }
}