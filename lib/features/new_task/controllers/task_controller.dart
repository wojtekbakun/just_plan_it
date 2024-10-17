import 'package:just_plan_it/features/new_task/providers/task_provider.dart';
import 'package:just_plan_it/models/task_model.dart';

class TaskController {
  final TaskProvider _taskProvider;
  TaskController(this._taskProvider);

  void addTask(TaskModel task) {
    _taskProvider.addTask(task);
  }

  void checkTask(int index) {
    _taskProvider.toggleDone(index);
  }

  void deleteTask(int index) {
    _taskProvider.deleteTask(index);
  }
}
