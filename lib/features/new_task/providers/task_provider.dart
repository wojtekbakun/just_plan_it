import 'package:flutter/material.dart';
import 'package:just_plan_it/models/task_model.dart';

class TaskProvider extends ChangeNotifier {
  List<TaskModel> _tasks = [TaskModel(title: 'title'), TaskModel(title: '2')];
  List<TaskModel> get tasks => _tasks;

  void addTask(TaskModel task) {
    _tasks.add(task);
    debugPrint('Task added: ${task.title}');
    debugPrint('Total tasks: ${_tasks.length}');
    notifyListeners();
  }
}
