import 'package:flutter/material.dart';
import 'package:health_habit/models/Category.dart';

class CategoryConstants {
  static final Category sports = Category(
    name: 'Esportes',
    icon: Icon(Icons.sports),
  );

  static final Category music = Category(
    name: 'Música',
    icon: Icon(Icons.music_note),
  );

  static final Category tech = Category(
    name: 'Tecnologia',
    icon: Icon(Icons.computer),
  );

}