import 'package:flutter/material.dart';
import 'routes.dart';

void main() {
  debugPrint("App started");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: AppRoutes.routes,
      theme: ThemeData(
          fontFamily: 'HumanSans',
          textTheme: const TextTheme(
              headlineLarge: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
                color: Colors.white,
              ),
              bodyMedium: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Colors.white70,
              ),
              bodySmall: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Colors.white70,
              ))),
    );
  }
}
