class Habit {
  final String habitId; 
  final String name;
  final String description; 
  final String frequency; 
  final DateTime creationDate; 

  Habit({
    required this.habitId,
    required this.name,
    required this.description,
    required this.frequency,
    required this.creationDate,
  });

  @override
  String toString() {
    return 'Habit(id: \$habitId, name: \$name, description: \$description, frequency: \$frequency, creationDate: \$creationDate)';
  }
}
