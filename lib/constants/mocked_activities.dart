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
    Habit(
      name: "Prática de Yoga",
      description: "Fazer yoga todas as manhãs para melhorar a flexibilidade e reduzir o estresse",
      category: CategoryConstants.task,
    ),
    Task(
      name: "Organizar a despensa",
      description: "Verificar validades e organizar os alimentos na despensa",
      category: CategoryConstants.task,
    ),
    Habit(
      name: "Estudo de idiomas",
      description: "Estudar francês por 30 minutos diariamente usando um aplicativo",
      category: CategoryConstants.task,
    ),
    Task(
      name: "Agendar reuniões semanais",
      description: "Agendar reuniões semanais com a equipe para sincronizar projetos",
      category: CategoryConstants.task,
    ),
    Habit(
      name: "Hidratação",
      description: "Beber ao menos 2 litros de água todos os dias",
      category: CategoryConstants.task,
    ),
    Task(
      name: "Renovar seguro do carro",
      description: "Comparar preços e renovar o seguro do carro antes do vencimento",
      category: CategoryConstants.task,
    ),
    Habit(
      name: "Jardinagem",
      description: "Cuidar do jardim todas as tardes, regando e podando as plantas",
      category: CategoryConstants.task,
    ),
    Task(
      name: "Preparar a apresentação do projeto",
      description: "Preparar slides para a apresentação do novo projeto no próximo encontro com investidores",
      category: CategoryConstants.task,
    ),
];



