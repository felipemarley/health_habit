import 'package:health_habit/models/Activity.dart';

class Task extends Activity {

  Task({
    required super.name,
    super.description,
    required category,
  }) : super(category: category);
}
