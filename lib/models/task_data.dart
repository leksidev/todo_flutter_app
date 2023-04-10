import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todo_flutter_app/models/task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(name: 'By milk'),
    Task(name: 'Be bread'),
    Task(name: 'By milk'),
    Task(name: 'Be bread'),
  ];

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(int taskIndex) {
    _tasks.removeAt(taskIndex);
    notifyListeners();
  }
}
