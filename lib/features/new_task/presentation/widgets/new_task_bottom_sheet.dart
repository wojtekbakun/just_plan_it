import 'package:flutter/material.dart';
import 'package:just_plan_it/features/new_task/controllers/task_controller.dart';
import 'package:just_plan_it/features/new_task/providers/task_provider.dart';
import 'package:just_plan_it/models/task_model.dart';
import 'package:provider/provider.dart';

class NewTaskBottomSheet extends StatefulWidget {
  const NewTaskBottomSheet({super.key});

  @override
  State<NewTaskBottomSheet> createState() => _NewTaskBottomSheetState();
}

class _NewTaskBottomSheetState extends State<NewTaskBottomSheet> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
        onClosing: () {},
        builder: (BuildContext context) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Add new task',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _controller,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        final taskProvider =
                            Provider.of<TaskProvider>(context, listen: false);
                        TaskController(taskProvider).addTask(
                          TaskModel(title: _controller.text),
                        );
                        Navigator.of(context).pop();
                      },
                      child: const Icon(
                        Icons.add,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 40.0,
                ),
              ],
            ),
          );
        });
  }
}
