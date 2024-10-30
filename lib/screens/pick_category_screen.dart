import 'package:flutter/material.dart';
import 'package:health_habit/models/Category.dart';
import 'package:health_habit/constants/CategoryConstants.dart'; 

class PickCategoryScreen extends StatefulWidget {
  const PickCategoryScreen({super.key});

  @override
  State<PickCategoryScreen> createState() => _PickCategoryScreenState();
}

class _PickCategoryScreenState extends State<PickCategoryScreen> {
  final List<Category> categories = [
    CategoryConstants.sports,
    CategoryConstants.esports,
    CategoryConstants.badHabit,
    CategoryConstants.gym,
    CategoryConstants.music,
    CategoryConstants.tech,
    CategoryConstants.alarm,
    CategoryConstants.chill,
    CategoryConstants.sleep,
    CategoryConstants.busTime,
    CategoryConstants.birthday,
    CategoryConstants.task,
  ];

  int? _selectedCategoryIndex;

  void _onCategorySelected(int index) {
    setState(() {
      _selectedCategoryIndex = index;
    });
  }

  void _navigateToNextScreen() {
    final selectedCategory = categories[_selectedCategoryIndex!];
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NextScreen(selectedCategory: selectedCategory),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Escolha uma Categoria para sua Atividade', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 6,
                  mainAxisSpacing: 6,
                  childAspectRatio: 3,
                ),
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final category = categories[index];
                  final isSelected = _selectedCategoryIndex == index;

                  return GestureDetector(
                    onTap: () => _onCategorySelected(index),
                    child: Card(
                      color: isSelected ? Colors.black : Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              category.icon.icon,
                              color: isSelected ? Colors.white : Colors.black,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              category.name,
                              style: TextStyle(
                                color: isSelected ? Colors.white : Colors.black,
                              ),
                              overflow: TextOverflow.clip,
                              softWrap: true,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: _selectedCategoryIndex != null
                  ? _navigateToNextScreen
                  : null, // Desabilita o botão se nenhuma categoria foi selecionada
              child: const Text('Confirmar e Prosseguir'),
            ),
          ),
        ],
      ),
    );
  }
}

class NextScreen extends StatelessWidget {
  final Category selectedCategory;

  const NextScreen({super.key, required this.selectedCategory});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categoria Selecionada: ${selectedCategory.name}'),
      ),
      body: Center(
        child: Text(
          selectedCategory.name,
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
