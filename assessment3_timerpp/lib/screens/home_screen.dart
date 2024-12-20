import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_timer_app/providers/task_provider.dart';
import 'package:task_timer_app/screens/add_task_screen.dart';

import 'package:task_timer_app/widgets/task_list_item.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tasks = ref.watch(userTaskProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Task Timer Tracker'),
      ),
      body: TaskListItem(tasks: tasks),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) => const AddTaskScreen(),
            ),
          );
        },
        tooltip: 'Add',
        child: const Icon(Icons.add),
      ),
    );
  }
}
