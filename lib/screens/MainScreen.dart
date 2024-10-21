import 'package:flutter/material.dart';
import 'package:health_habit/widgets/HabitsList.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(flex: 8, child: HabitsList()),
      Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            Text("Adicionar hábito"),
            FloatingActionButton(onPressed: () {}, child: Icon(Icons.add))
          ])),
    ]);
  }
}
