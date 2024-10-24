import 'package:health_habit/constants/CategoryConstants.dart';
import 'package:health_habit/models/Activity.dart';
import 'package:health_habit/models/Habit.dart';
import 'package:health_habit/models/Task.dart';

export 'mocked_activities.dart';

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


