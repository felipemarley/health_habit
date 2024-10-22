import 'package:flutter/material.dart';
import 'package:health_habit/models/Activity.dart';
import 'package:health_habit/models/Habit.dart';
import 'package:health_habit/constants/CategoryConstants.dart';
import 'package:health_habit/models/Task.dart';
import 'package:health_habit/models/enums/ActivityStatus.dart';

class ActivitiesList extends StatefulWidget {

  ActivitiesList({super.key});

  @override
  State<ActivitiesList> createState() => _ActivitiesListState();
}

class _ActivitiesListState extends State<ActivitiesList> {
  final List<Activity> activities = [
    Habit(
      name: "Ir à academia",
      description: "Ir à academia 3 vezes por semana",
      category: CategoryConstants.sports,  // Exemplo de categoria
    ),
    Task(
      name: "Entregar relatório",
      description: "Relatório de progresso",
      category: CategoryConstants.task,  // Exemplo de categoria
    ),
    Habit(
      name: "Aprender guitarra",
      description: "Praticar guitarra por 1 hora todos os dias",
      category: CategoryConstants.music,
    ),
    Task(
      name: "Comprar presentes",
      description: "Comprar presentes de aniversário",
      category: CategoryConstants.task,
    ),
  ];

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
    return ListView.separated(
      itemCount: activities.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {onActivityTap(activities[index]);},
          
          child: ListTile(
            leading: activities[index].category.icon,
            title: Text(activities[index].name),
            subtitle: activities[index] is Task ? const Text("Task") : const Text("Habit"),
            trailing: activities[index].status == ActivityStatus.pending
                ? const Icon(Icons.check_box_outline_blank)
                : activities[index].status == ActivityStatus.completed
                    ? const Icon(Icons.check_box)
                    : const Icon(Icons.cancel),
          ),
        );
      },
      separatorBuilder: (context, index) => const Divider(color: Colors.black,),
    );
  }
}
