import 'package:flutter/material.dart';
import 'package:health_habit/screens/login_screen.dart';
import 'package:health_habit/screens/main_screen.dart';
import 'package:health_habit/screens/form_screen.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    '/': (BuildContext context) => LoginScreen(),
    '/main': (BuildContext context) => MainScreen(),
    '/edit': (BuildContext context) => FormScreen()
  };
}
