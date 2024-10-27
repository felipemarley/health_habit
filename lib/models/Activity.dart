import 'package:health_habit/models/Category.dart';
import 'package:health_habit/models/enums/ActivityStatus.dart';
import 'package:uuid/uuid.dart';

class Activity {
  static final Uuid _uuid = Uuid();  // Static instance of Uuid

  final String activityId;
  final String name;
  final String? description;
  ActivityStatus status;  // Consider if this should be mutable or not
  final Category category;

  Activity({
    required this.name,
    this.description,
    required this.category,
    this.status = ActivityStatus.pending,
  }) : activityId = _uuid.v4();  // Use the static Uuid instance
}
