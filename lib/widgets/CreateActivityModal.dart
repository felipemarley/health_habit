import 'package:flutter/material.dart';

class CreateActivityModal extends StatelessWidget {
  const CreateActivityModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height * 0.3,
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              // faz um print para debug
              print("Criar hábito");
              Navigator.of(context).pop(); // Fecha o modal
              Navigator.of(context).pushNamed(
                  '/habit-form'); // Navega para o formulário de hábito
            },
            child: Text("Criar hábito"),
          ),
          ElevatedButton(
            onPressed: () {
              // faz um print para debug
              print("Criar tarefa");
              Navigator.of(context).pop(); // Fecha o modal
              Navigator.of(context).pushNamed(
                  '/task-form'); // Navega para o formulário de tarefa
            },
            child: Text("Criar tarefa"),
          ),
        ],
      ),
    );
  }
}
