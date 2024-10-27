import 'package:flutter/material.dart';
import 'package:health_habit/models/Activity.dart';
import 'package:health_habit/models/Task.dart';
import 'package:health_habit/models/Habit.dart';
import 'package:health_habit/models/enums/ActivityStatus.dart';
import 'package:health_habit/widgets/ActivityModal.dart';
import 'package:health_habit/widgets/CategoryIconBadge.dart';
import 'package:health_habit/widgets/HorizontalDatePicker.dart';
import 'package:health_habit/constants/mocked_activities.dart'; // ATIVIDADES ESTÃO AQUI <---

class ActivitiesList extends StatefulWidget {
  ActivitiesList({super.key});

  @override
  State<ActivitiesList> createState() => _ActivitiesListState();
}

class _ActivitiesListState extends State<ActivitiesList> {
  List<Activity> _filteredActivities = activities; // ATIVIDADES ESTÃO AQUI <---

  onActivityTap(Activity activity) {
    if (activity.status == ActivityStatus.pending) {
      activity.status = ActivityStatus.completed;
    } else if (activity.status == ActivityStatus.completed) {
      activity.status = ActivityStatus.cancelled;
    } else {
      activity.status = ActivityStatus.pending;
    }
    setState(() {
      activity.status = activity.status;
    });
  }

  void filterByDate(DateTime date) {
    print("Filtering by date: $date");
    var results = activities.where((activity) {
      if (activity is Habit) {
        print("${activity.name},${activity.startDate}");
        return activity.scheduledDates
            .any((scheduledDate) => scheduledDate.day == date.day && scheduledDate.month == date.month && scheduledDate.year == date.year);
      }
      if (activity is Task) {
        print("${activity.name},${activity.date}");
        return activity.date.day == date.day && activity.date.month == date.month && activity.date.year == date.year;
      }
      return false; // Exclude non-Habit activities since they don't have active dates
    }).toList();

    setState(() {
      _filteredActivities = results;
    }); 
  }

  @override
  void initState() {
    super.initState();
    filterByDate(DateTime.now());
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      HorizontalDatePicker(
        onDatePick: filterByDate,
      ),
      Expanded(
          child: ListView.separated(
        itemCount: _filteredActivities.length + 1,
        itemBuilder: (context, index) {
          if (index == _filteredActivities.length) {
            return SizedBox(height: 80); // Height of the FAB + some padding
          }
          return GestureDetector(
            onTap: () {
              onActivityTap(_filteredActivities[index]);
            },
            onLongPress: () {
              showModalBottomSheet(
                  context: context,
                  builder: (_) {
                    return ActivityModal(activity: _filteredActivities[index]);
                  });
            },
            child: ListTile(
              leading: const CategoryIconBadge(
                  badgeText: 'teste',
                  backgroundColor: Colors.blue,
                  icon: Icon(Icons.abc)),
              title: Text(_filteredActivities[index].name),
              subtitle: _filteredActivities[index] is Task
                  ? const Align(
                      alignment: Alignment.centerLeft,
                      child: Badge(
                          badgeText: 'Task', backgroundColor: Colors.blue))
                  : const Align(
                      alignment: Alignment.centerLeft,
                      child: Badge(
                          badgeText: 'Habit', backgroundColor: Colors.green)),
              trailing:
                  _filteredActivities[index].status == ActivityStatus.pending
                      ? const Icon(Icons.check_box_outline_blank)
                      : _filteredActivities[index].status ==
                              ActivityStatus.completed
                          ? const Icon(Icons.check_box)
                          : const Icon(Icons.cancel),
            ),
          );
        },
        separatorBuilder: (context, index) => const Divider(
          color: Colors.black,
        ),
      )),
    ]);
  }
}

class Badge extends StatelessWidget {
  final String badgeText;
  final Color backgroundColor;

  const Badge(
      {super.key, required this.badgeText, required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: 4, vertical: 2), // Minimal padding around the text
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(4), // Gives it a rounded shape
      ),
      child: Text(
        badgeText,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 11,
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
