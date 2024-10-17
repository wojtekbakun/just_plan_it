import 'package:flutter/material.dart';
import 'package:just_plan_it/features/new_task/presentation/widgets/new_task_bottom_sheet.dart';

class NewTaskButton extends StatelessWidget {
  const NewTaskButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () => showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return const NewTaskBottomSheet();
        },
      ),
      label: const Row(
        children: [
          Icon(
            Icons.add,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Text('New task'),
          ),
        ],
      ),
    );
  }
}
