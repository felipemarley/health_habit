import 'package:flutter/material.dart';
import 'package:health_habit/models/Activity.dart';
import 'package:health_habit/models/Habit.dart';
import 'package:health_habit/constants/CategoryConstants.dart';
import 'package:health_habit/models/Task.dart';
import 'package:health_habit/models/enums/ActivityStatus.dart';
import 'package:health_habit/widgets/CategoryIconBadge.dart';

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
      category: CategoryConstants.sports, // Exemplo de categoria
    ),
    Task(
      name: "Entregar relatório",
      description: "Relatório de progresso",
      category: CategoryConstants.task, // Exemplo de categoria
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
    return Column(children: [
      Expanded(
          child: ListView.separated(
        itemCount: activities.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              onActivityTap(activities[index]);
            },
            child: ListTile(
              leading: const CategoryIconBadge(
                  badgeText: 'teste',
                  backgroundColor: Colors.blue,
                  icon: Icon(Icons.abc)),
              title: Text(activities[index].name),
              subtitle: activities[index] is Task
                  ? Align(
                      alignment: Alignment.centerLeft,
                      child: Badge(
                          badgeText: 'Task', backgroundColor: Colors.blue))
                  : Align(
                      alignment: Alignment.centerLeft,
                      child: Badge(
                          badgeText: 'Habit', backgroundColor: Colors.green)),
              trailing: activities[index].status == ActivityStatus.pending
                  ? Icon(Icons.check_box_outline_blank)
                  : activities[index].status == ActivityStatus.completed
                      ? Icon(Icons.check_box)
                      : Icon(Icons.cancel),
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
      padding: EdgeInsets.symmetric(
          horizontal: 4, vertical: 2), // Minimal padding around the text
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(4), // Gives it a rounded shape
      ),
      child: Text(
        badgeText,
        style: TextStyle(
          color: Colors.white,
          fontSize: 11,
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
