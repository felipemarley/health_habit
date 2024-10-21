import 'package:flutter/material.dart';
import 'package:health_habit/screens/MainScreen.dart';
import 'package:health_habit/widgets/AppDrawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(title: const Text("Habits")), drawer: const Drawer(child: AppDrawer()) , body: const MainScreen()),
    );
  }
}
