import 'package:health_habit/models/Activity.dart';
class Task extends Activity {
  DateTime date;

  Task({
    required super.name,
    super.description,
    required super.category,
    super.status,
    required this.date,
  });
}
