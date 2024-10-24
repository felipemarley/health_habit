import 'package:flutter/material.dart';
import 'package:health_habit/models/Activity.dart';
import 'package:health_habit/models/Habit.dart';
import 'package:health_habit/models/Task.dart';
import 'package:health_habit/models/enums/ActivityStatus.dart';
import 'package:health_habit/widgets/ActivityModal.dart';
import 'package:health_habit/widgets/CategoryIconBadge.dart';
import 'package:health_habit/constants/CategoryConstants.dart';
import 'package:health_habit/constants/mocked_activities.dart';
import 'package:health_habit/widgets/HorizontalDatePicker.dart';

class ActivitiesList extends StatefulWidget {
  ActivitiesList({super.key});

  @override
  State<ActivitiesList> createState() => _ActivitiesListState();
}

class _ActivitiesListState extends State<ActivitiesList> {
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

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      HorizontalDatePicker(),
      Expanded(
          child: ListView.separated(
        itemCount: activities.length + 1,
        itemBuilder: (context, index) {
          if (index == activities.length) {
            return SizedBox(height: 80); // Height of the FAB + some padding
          }
          return GestureDetector(
            onTap: () {
              onActivityTap(activities[index]);
            },
            onLongPress: () {
              showModalBottomSheet(
                  context: context,
                  builder: (_) {
                    return ActivityModal(activity: activities[index]);
                  });
            },
            child: ListTile(
              leading: const CategoryIconBadge(
                  badgeText: 'teste',
                  backgroundColor: Colors.blue,
                  icon: Icon(Icons.abc)),
              title: Text(activities[index].name),
              subtitle: activities[index] is Task
                  ? const Align(
                      alignment: Alignment.centerLeft,
                      child: Badge(
                          badgeText: 'Task', backgroundColor: Colors.blue))
                  : const Align(
                      alignment: Alignment.centerLeft,
                      child: Badge(
                          badgeText: 'Habit', backgroundColor: Colors.green)),
              trailing: activities[index].status == ActivityStatus.pending
                  ? const Icon(Icons.check_box_outline_blank)
                  : activities[index].status == ActivityStatus.completed
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
