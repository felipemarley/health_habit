import 'package:flutter/material.dart';
import 'package:health_habit/screens/habit_form_screen.dart';
import 'package:health_habit/screens/login_screen.dart';
import 'package:health_habit/screens/main_screen.dart';
import 'package:health_habit/screens/pick_category_screen.dart';
import 'package:health_habit/screens/task_form_screen.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    '/': (BuildContext context) => LoginScreen(),
    '/main': (BuildContext context) => MainScreen(),
    '/task-form': (BuildContext context) => TaskFormScreen(),
    '/pick-habit-category': (BuildContext context) => PickCategoryScreen(),
    '/habit-form': (BuildContext context) => HabitFormScreen(),
  };
}
