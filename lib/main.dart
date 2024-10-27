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
    );
  }
}
