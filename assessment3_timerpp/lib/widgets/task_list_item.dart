import 'package:flutter/material.dart';
import 'package:task_timer_app/models/task.dart';
import 'package:task_timer_app/screens/task_details_screen.dart';

class TaskListItem extends StatelessWidget {
  const TaskListItem({super.key, required this.tasks});
  final List<Task> tasks;

  @override
  Widget build(BuildContext context) {
    if (tasks.isEmpty) {
      return Center(
        child: Text(
          'No tasks added yet.',
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: Theme.of(context).colorScheme.onSurface),
        ),
      );
    }
    return ListView.builder(
      padding: EdgeInsets.all(8),
      itemCount: tasks.length,
      itemBuilder: (ctx, index) => ListTile(
        contentPadding: EdgeInsets.all(5),
        tileColor: const Color.fromARGB(61, 68, 137, 255),
        title: Text(
          tasks[index].name,
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: Theme.of(context).colorScheme.onSurface),
          textAlign: TextAlign.center,
        ),
        leading: Text(
          tasks[index].category,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        trailing: Text('Time'),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) => TaskDetailsScreen(
                task: tasks[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
