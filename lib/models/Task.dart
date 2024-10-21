import 'package:health_habit/models/Activity.dart';
import 'package:health_habit/models/Category.dart';

class Task extends Activity {

  Task({
    required String name,
    String? description,
    required category,
  }) : super(name: name, description: description, category: category);
}
