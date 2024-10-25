import 'package:flutter/material.dart';
import 'package:health_habit/models/Category.dart';
import 'package:health_habit/constants/CategoryConstants.dart'; 
class PickCategoryScreen extends StatelessWidget {
  const PickCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Category> categories = [
      CategoryConstants.sports,
      CategoryConstants.esports,
      CategoryConstants.gym,
      CategoryConstants.music,
      CategoryConstants.tech,
      CategoryConstants.alarm,
      CategoryConstants.chill,
      CategoryConstants.sleep,
      CategoryConstants.bus_time,
      CategoryConstants.birthday,
      CategoryConstants.task,
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Escolha uma Categoria para sua Atividade'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, 
            crossAxisSpacing: 16, // Espaçamento entre colunas
            mainAxisSpacing: 16, // Espaçamento entre linhas
            childAspectRatio: 3, // Ajusta a proporção para exibir o ícone e nome
          ),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            final category = categories[index];
            return GestureDetector(
              onTap: () {
                //print('Categoria selecionada: ${category.name}');
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      category.icon, 
                      const SizedBox(width: 8), // Espaçamento entre o ícone e o nome
                      Text(category.name), 
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}