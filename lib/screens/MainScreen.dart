import 'package:flutter/material.dart';
import 'package:health_habit/widgets/ActivitiesList.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(flex: 8, child: ActivitiesList()),
      Expanded(
          flex: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            const Text("Adicionar atividade"),
            FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add))
          ])),
    ]);
  }
}
