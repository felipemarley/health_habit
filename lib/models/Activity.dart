import 'package:health_habit/models/Category.dart';
import 'package:uuid/uuid.dart';

class Activity {
  final String activityId;
  final String name;
  final String? description;
  final Category category;

  Activity({
    required this.name,
    this.description,
    required this.category,
  }) : activityId = const Uuid().v4();
}
