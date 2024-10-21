import 'package:health_habit/models/Category.dart';
import 'package:uuid/uuid.dart';

class Habit {
  final String habitId; 
  final String name;
  final String description; 
  final Category category;

  Habit({
    required this.name,
    required this.description,
    required this.category,
  }) : habitId = const Uuid().v4();

  
}
