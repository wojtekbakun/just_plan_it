import 'package:just_plan_it/features/new_task/providers/task_provider.dart';
import 'package:just_plan_it/models/task_model.dart';

class TaskRepository {
  void addTask(TaskModel task) {
    TaskProvider().addTask(task);
  }
}
