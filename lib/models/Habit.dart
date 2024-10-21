import 'package:health_habit/models/Activity.dart';
import 'package:health_habit/models/Category.dart';

class Habit extends Activity {

  Habit({
    required String name,
    String? description,
    required category,
  }) : super(name: name, description: description, category: category); 
}
