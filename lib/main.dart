import 'package:flutter/material.dart';
import 'package:health_habit/screens/MainScreen.dart';
import 'package:health_habit/widgets/AppDrawer.dart';
import 'routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: AppRoutes.routes,
    );
  }
}
