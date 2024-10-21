import 'package:flutter/material.dart';
import 'package:health_habit/models/Habit.dart';
import 'package:health_habit/constants/CategoryConstants.dart';

class HabitsList extends StatelessWidget {
  final List<Habit> _habits = [
    Habit(
      name: "Ir à academia",
      description: "Ir à academia 3 vezes por semana",
      category: CategoryConstants.sports,  // Categoria de esportes
    ),
    Habit(
      name: "Aprender guitarra",
      description: "Praticar guitarra 1 hora por dia",
      category: CategoryConstants.music,  // Categoria de música
    ),
    Habit(
      name: "Aprender guitarra",
      description: "Praticar guitarra 1 hora por dia",
      category: CategoryConstants.music,  // Categoria de música
    ),
    Habit(
      name: "Aprender guitarra",
      description: "Praticar guitarra 1 hora por dia",
      category: CategoryConstants.music,  // Categoria de música
    ),
    Habit(
      name: "Aprender guitarra",
      description: "Praticar guitarra 1 hora por dia",
      category: CategoryConstants.music,  // Categoria de música
    ),
    Habit(
      name: "Aprender guitarra",
      description: "Praticar guitarra 1 hora por dia",
      category: CategoryConstants.music,  // Categoria de música
    ),
    Habit(
      name: "Aprender guitarra",
      description: "Praticar guitarra 1 hora por dia",
      category: CategoryConstants.music,  // Categoria de música
    ),
    Habit(
      name: "Aprender guitarra",
      description: "Praticar guitarra 1 hora por dia",
      category: CategoryConstants.music,  // Categoria de música
    ),
    Habit(
      name: "Aprender guitarra",
      description: "Praticar guitarra 1 hora por dia",
      category: CategoryConstants.music,  // Categoria de música
    ),
    
    // Adicione mais hábitos conforme necessário
  ];

  HabitsList({super.key});


  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: _habits.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: _habits[index].category.icon,
          title: Text(_habits[index].name),
          trailing: Icon(Icons.check_box_outline_blank),
        );
      },
      separatorBuilder: (context, index) => Divider(color: Colors.black,),
    );
  }
}
