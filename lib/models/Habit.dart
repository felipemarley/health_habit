import 'package:uuid/uuid.dart';

class Habit {
  final String habitId; 
  final String name;
  final String description; 
  final String frequency; 
  final DateTime creationDate; 

  Habit({
    required this.name,
    required this.description,
    required this.frequency,
    required this.creationDate,
  }) : habitId = const Uuid().v4();

  @override
  String toString() {
    return 'Habit(id: $habitId, name: $name, description: $description, frequency: $frequency, creationDate: $creationDate)';
  }
}
