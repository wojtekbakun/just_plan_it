import 'package:flutter/material.dart';
import 'package:just_plan_it/features/home_page/presentation/widgets/new_task_button.dart';
import 'package:just_plan_it/features/new_task/controllers/task_controller.dart';
import 'package:just_plan_it/features/new_task/providers/task_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const NewTaskButton(),
      body: SafeArea(
        child: Consumer<TaskProvider>(
          builder: (context, taskProvider, _) => taskProvider.tasks.isEmpty
              ? const Center(
                  child: Text('There are no tasks yet!'),
                )
              : ListView.builder(
                  itemCount: taskProvider.tasks.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(taskProvider.tasks[index].title),
                      leading: taskProvider.tasks[index].isDone
                          ? const Icon(Icons.check_box)
                          : const Icon(Icons.check_box_outline_blank),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () =>
                            TaskController(taskProvider).deleteTask(index),
                      ),
                      onTap: () =>
                          TaskController(taskProvider).checkTask(index),
                    );
                  }),
        ),
      ),
    );
  }
}
