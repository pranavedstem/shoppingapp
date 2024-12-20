import 'package:flutter/material.dart';
import 'package:task_timer_app/models/task.dart';
import 'package:task_timer_app/widgets/timer_display.dart';

class TaskDetailsScreen extends StatelessWidget {
  const TaskDetailsScreen({super.key, required this.task});
  final Task task;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          task.name,
          style: TextStyle(
            color: const Color.fromARGB(255, 199, 24, 24),
          ),
        ),
      ),
      body: CountUpTimer(),
    );
  }
}
