import 'package:flutter/material.dart';
import 'package:health_habit/screens/LoginScreen.dart';
import 'package:health_habit/screens/MainScreen.dart';
import 'package:health_habit/widgets/AppDrawer.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    '/': (BuildContext context) => LoginScreen(),
    '/habits': (BuildContext context) => MainScreen()
  };
}
