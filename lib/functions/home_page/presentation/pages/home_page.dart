import 'package:flutter/material.dart';
import 'package:just_plan_it/functions/home_page/presentation/new_task_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            NewTaskButton(),
          ],
        ),
      ),
    );
  }
}
