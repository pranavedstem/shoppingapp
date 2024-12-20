import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_timer_app/models/task.dart';

// final dropdownItemsProvider = Provider<List<String>>((ref) {
//   return ['Work', 'Personal', 'Study', 'Others'];
// });

// final selectedValueProvider = StateProvider<String?>((ref) => null);

// final userTaskProvider =
//     StateNotifierProvider<TaskNotifier, List<String>>((ref) {
//   return TaskNotifier();
// });

// class TaskNotifier extends StateNotifier<List<String>> {
//   TaskNotifier() : super([]);

//   void addTask(String taskName, String? category) {
//     final task = category != null ? '$taskName ($category)' : taskName;
//     state = [...state, task];
//   }
// }

// class UserTaskNotifier extends StateNotifier<List<Task>> {
//   UserTaskNotifier() : super(const []);

//   void addTask(String name) {
//     final addTask = Task(name: name, category: 'category');

//     state = [addTask, ...state];
//   }
// }

// final userTaskProvider = StateNotifierProvider<UserTaskNotifier, List<Task>>(
//   (ref) => UserTaskNotifier(),

// );

// Dropdown categories
final dropdownItemsProvider = Provider<List<String>>((ref) {
  return ['Work', 'Personal', 'Study', 'Others'];
});

// Selected category provider
final selectedValueProvider = StateProvider<String?>((ref) => null);

// Task management provider
final userTaskProvider = StateNotifierProvider<TaskNotifier, List<Task>>((ref) {
  return TaskNotifier();
});

// TaskNotifier to manage tasks
class TaskNotifier extends StateNotifier<List<Task>> {
  TaskNotifier() : super([]);

  void addTask(String name, String? category) {
    final newTask = Task(name: name, category: category ?? 'Uncategorized');
    state = [newTask, ...state];
  }
}
