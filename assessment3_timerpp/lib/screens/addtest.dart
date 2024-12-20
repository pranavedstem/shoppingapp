// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:task_timer_app/providers/task_provider.dart';

// // Assuming these providers are defined elsewhere

// class AddTaskScreen extends ConsumerStatefulWidget {
//   const AddTaskScreen({super.key});

//   @override
//   ConsumerState<AddTaskScreen> createState() => _AddTaskScreenState();
// }

// class _AddTaskScreenState extends ConsumerState<AddTaskScreen> {
//   final _nameController = TextEditingController();

//   void _saveTask() {
//     final enteredName = _nameController.text;
//     final selectedCategory = ref.read(selectedValueProvider);

//     if (enteredName.isEmpty) {
//       return;
//     }

//     ref.read(userTaskProvider.notifier).addTask(enteredName, selectedCategory);
//     Navigator.of(context).pop();
//   }

//   @override
//   void dispose() {
//     _nameController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final dropdownItems = ref.watch(dropdownItemsProvider);
//     final selectedValue = ref.watch(selectedValueProvider);

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Add New Task'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               TextField(
//                 maxLength: 50,
//                 decoration: const InputDecoration(
//                   label: Text('Task Name'),
//                   border: OutlineInputBorder(),
//                 ),
//                 controller: _nameController,
//                 style:
//                     TextStyle(color: Theme.of(context).colorScheme.onSurface),
//               ),
//               const SizedBox(height: 16),
//               DropdownButtonFormField<String>(
//                 value: selectedValue,
//                 onChanged: (value) {
//                   ref.read(selectedValueProvider.notifier).state = value;
//                 },
//                 items: dropdownItems.map((item) {
//                   return DropdownMenuItem<String>(
//                     value: item,
//                     child: Text(item),
//                   );
//                 }).toList(),
//                 decoration: const InputDecoration(
//                   labelText: 'Select a Category',
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               const SizedBox(height: 16),
//               ElevatedButton.icon(
//                 onPressed: _saveTask,
//                 icon: const Icon(Icons.add),
//                 label: const Text('Add Task'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
