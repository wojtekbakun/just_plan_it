import 'package:flutter/material.dart';

class NewTaskButton extends StatelessWidget {
  const NewTaskButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      tooltip: 'Add new task',
      onPressed: () {},
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
