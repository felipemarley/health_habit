import 'package:health_habit/models/Activity.dart';
class Habit extends Activity {

  Habit({
    required super.name,
    super.description,
    required category,
  }) : super(category: category); 
}
