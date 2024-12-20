import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_timer_app/models/task.dart';



final dropdownItemsProvider = Provider<List<String>>((ref) {
  return ['Work', 'Personal', 'Study', 'Others'];
});


final selectedValueProvider = StateProvider<String?>((ref) => null);


final userTaskProvider = StateNotifierProvider<TaskNotifier, List<Task>>((ref) {
  return TaskNotifier();
});


class TaskNotifier extends StateNotifier<List<Task>> {
  TaskNotifier() : super([]);

  void addTask(String name, String? category) {
    final newTask = Task(name: name, category: category ?? 'Uncategorized');
    state = [newTask, ...state];
  }
}
