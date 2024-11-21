// import 'package:flutter/scheduler.dart';
import 'package:uuid/uuid.dart';


final uuid=Uuid();

class ShopingItems {
  ShopingItems({
     required this.name,
     required this.quantity,
     required this.category,
     required this.priority,
     required this.isCompleted

  }) : id =uuid.v4();
  final String id;
  final String name;
  final int quantity;
  final String category ;
  final Priority priority ;
  bool isCompleted ;
  // implement constructor and required method
}

enum Priority {
  high,
  medium,
  low
}