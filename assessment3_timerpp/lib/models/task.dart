import 'package:uuid/uuid.dart';

const uuid = Uuid();

class Task {
  Task({
    required this.name,
    required this.category,
    this.isRunning = false,
    this.totalSeconds = 0,
  }) : id = uuid.v4();
  final String id;
  final String name;
  final String category;
  int totalSeconds;
  bool isRunning;
}
