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
          ElevatedButton(onPressed: (){}, child: Text("Criar hábito")),
          ElevatedButton(onPressed: (){}, child: Text("Criar tarefa")),
        ],
      ),
    );
  }
}
