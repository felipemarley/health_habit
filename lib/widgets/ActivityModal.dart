import 'package:flutter/material.dart';
import 'package:health_habit/models/Activity.dart';
import 'package:health_habit/models/Habit.dart';
import 'package:health_habit/models/Task.dart';

class ActivityModal extends StatelessWidget {
  final Activity activity;
  const ActivityModal({super.key, required this.activity});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height * 0.3,
      child: Column(
        children: [
          Text(activity is Habit ? "Habit" : "Task"),
          Text(activity.name),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              if (activity is Habit) {
                Navigator.pushNamed(
                  context,
                  '/habit-form',
                  arguments: activity,
                );
              } else if (activity is Task) {
                Navigator.pushNamed(
                  context,
                  '/task-form',
                  arguments: activity,
                );
              }
            },
            child: Text("Editar"),
          ),
        ],
      ),
    );
  }
}
