
import 'package:flutter/material.dart';
import '../models/Habit.dart';
import '../widgets/HabitForm.dart';

class HabitFormScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Habit? habit = ModalRoute.of(context)!.settings.arguments as Habit?;

    return Scaffold(
      appBar: AppBar(title: Text(habit == null ? 'Add Habit' : 'Edit Habit')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: HabitForm(
          initialName: habit?.name,
          initialDescription: habit?.description,
        ),
      ),
    );
  }
}
