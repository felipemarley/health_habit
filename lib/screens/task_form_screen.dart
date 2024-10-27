
import 'package:flutter/material.dart';
import '../models/Task.dart';
import '../widgets/TaskForm.dart';

class TaskFormScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Task? task = ModalRoute.of(context)!.settings.arguments as Task?;

    return Scaffold(
      appBar: AppBar(title: Text(task == null ? 'Add Task' : 'Edit Task')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TaskForm(
          initialName: task?.name,
          initialDescription: task?.description,
        ),
      ),
    );
  }
}
