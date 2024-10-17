import 'package:flutter/material.dart';
import 'package:just_plan_it/features/home_page/presentation/widgets/new_task_button.dart';
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
          builder: (context, taskProvider, _) => ListView.builder(
              itemCount: taskProvider.tasks.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Task ${taskProvider.tasks[index].title}'),
                );
              }),
        ),
      ),
    );
  }
}
