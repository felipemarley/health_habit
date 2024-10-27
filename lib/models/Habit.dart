import 'package:health_habit/models/Activity.dart';
import 'package:health_habit/models/enums/HabitFrequency.dart';

class Habit extends Activity {
  DateTime startDate;
  HabitFrequency frequency = HabitFrequency.everyDay; // Fixed typo
  List<DateTime> scheduledDates = [];

  Habit({
    required super.name,
    super.description,
    required super.category,
    super.status,
    required this.startDate,
  }) : super() {
    generateListOfScheduledDays();  // Call after full initialization
  }

  void generateListOfScheduledDays() {
    DateTime tempDate = startDate; // Use a temporary variable instead
    var endDate = startDate.add(Duration(days: 30));
    scheduledDates.clear();  // Clear previous entries to prevent duplication

    while (tempDate.isBefore(endDate)) {
      scheduledDates.add(tempDate);
      tempDate = tempDate.add(Duration(days: 1));
    }
  }
}
