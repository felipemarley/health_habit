import 'package:flutter/material.dart';

class TaskForm extends StatefulWidget {
  final String? initialName;
  final String? initialDescription;

  TaskForm({this.initialName, this.initialDescription});

  @override
  _TaskFormState createState() => _TaskFormState();
}

class _TaskFormState extends State<TaskForm> {
  final _formKey = GlobalKey<FormState>();
  late String _name;
  late String _description;

  @override
  void initState() {
    super.initState();
    _name = widget.initialName ?? '';
    _description = widget.initialDescription ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            initialValue: _name,
            decoration: InputDecoration(labelText: 'Task Name'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a task name';
              }
              return null;
            },
            onSaved: (value) => _name = value!,
          ),
          TextFormField(
            initialValue: _description,
            decoration: InputDecoration(labelText: 'Description'),
            onSaved: (value) => _description = value!,
          ),
          ElevatedButton(
            child: Text('Save Task'),
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                // to-do: Implementar lógica de salvamento de tarefa
              }
            },
          ),
        ],
      ),
    );
  }
}
