import 'package:flutter/material.dart';

class CreateActivityModal extends StatelessWidget {
  const CreateActivityModal({super.key});

  void goToHabitForm(BuildContext context) {
    Navigator.of(context).pop();
    Navigator.of(context).pushNamed('/habit-form');
  }

  void goToTaskForm(BuildContext context) {
    Navigator.of(context).pop();
    Navigator.of(context).pushNamed('/task-form');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.3, // 30% of the screen height
      padding: EdgeInsets.all(10), // Adds padding for better visual spacing
      child: Column(
        children: [
          ModalOption(
              title: 'Hábito',
              description: 'Adicione um novo hábito a sua rotina',
              icon: Icons.restart_alt,
              onTap: () => goToHabitForm(context)),
          Divider(),
          ModalOption(
              title: 'Tarefa',
              description: 'Adicione uma nova tarefa para a sua lista',
              icon: Icons.task_alt,
              onTap: () => goToTaskForm(context)),
        ],
      ),
    );
  }
}

class ModalOption extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final void Function() onTap;
  const ModalOption({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1, // Also takes 1 part of the space, equal to the button
      child: GestureDetector(
        onTap: onTap, // Use the passed onTap function
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(
              icon,
              size: 40.0,
              color: Colors.blue,
            ),
            Padding(
              padding: EdgeInsets.only(left: 5), // Adds padding for better visual spacing
              child: Container(
                width: MediaQuery.of(context).size.width * 0.6, // 60% of the screen width
                child: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(description),
                    ],
                  ),
                ),
              ),
            ),
            Icon(
              Icons.keyboard_arrow_right_outlined,
              size: 32.0,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
