import 'package:health_habit/models/Category.dart';
import 'package:health_habit/models/enums/ActivityStatus.dart';
import 'package:uuid/uuid.dart';

class Activity {
  final String activityId;
  final String name;
  final String? description;
  ActivityStatus status;
  final Category category;

  Activity({
    required this.name,
    this.description,
    required this.category,
    this.status = ActivityStatus.pending,
  }) : activityId = const Uuid().v4();
}
