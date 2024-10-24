import 'package:flutter/material.dart';
import 'package:health_habit/models/Category.dart';

class CategoryConstants {
  static final Category sports = Category(
    name: 'Esportes',
    icon: const Icon(Icons.sports),
  );

   static final Category esports = Category(
    name: 'Jogos Digitais',
    icon: const Icon(Icons.sports_esports),
  );

   static final Category gym = Category(
    name: 'Academia',
    icon: const Icon(Icons.fitness_center),
  );

  static final Category music = Category(
    name: 'Música',
    icon: const Icon(Icons.music_note),
  );

  static final Category tech = Category(
    name: 'Tecnologia',
    icon: const Icon(Icons.computer),
  );

  static final Category alarm = Category(
    name: "Alarme",
    icon: const Icon(Icons.alarm),
  );

  static final Category chill = Category(
    name: "Descanso", 
    icon: const Icon(Icons.beach_access),
  );

  static final Category sleep = Category(
    name: "Dormir", 
     icon: const Icon(Icons.bedtime),
  ) ; 

  static final Category bus_time = Category(
    name: "Pegar o Ônibus",
    icon: const Icon(Icons.bus_alert),
    );

   static final Category birthday = Category(
    name: "Aniversário",
    icon: const Icon(Icons.cake),
    );  
  static final Category task = Category(
    name: 'Tarefa',
    icon: const Icon(Icons.task),
  );

}