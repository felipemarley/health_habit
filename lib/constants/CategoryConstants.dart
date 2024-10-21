import 'package:flutter/material.dart';
import 'package:health_habit/models/Category.dart';

class CategoryConstants {
  static final Category sports = Category(
    name: 'Esportes',
    icon: const Icon(Icons.sports),
  );

  static final Category music = Category(
    name: 'Música',
    icon: const Icon(Icons.music_note),
  );

  static final Category tech = Category(
    name: 'Tecnologia',
    icon: const Icon(Icons.computer),
  );
  static final Category task = Category(
    name: 'Tarefa',
    icon: const Icon(Icons.task),
  );

}