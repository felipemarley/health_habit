import 'package:flutter/material.dart';
import 'package:health_habit/models/Activity.dart';
import 'package:health_habit/models/Habit.dart';
import 'package:health_habit/constants/CategoryConstants.dart';
import 'package:health_habit/models/Task.dart';

class ActivitiesList extends StatelessWidget {
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

  ActivitiesList({super.key});


  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: activities.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: activities[index].category.icon,
          title: Text(activities[index].name),
          subtitle: activities[index] is Task ? const Text("Task") : const Text("Habit"),
          trailing: const Icon(Icons.check_box_outline_blank),
        );
      },
      separatorBuilder: (context, index) => const Divider(color: Colors.black,),
    );
  }
}
