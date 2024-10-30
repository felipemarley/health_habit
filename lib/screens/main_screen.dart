import 'package:flutter/material.dart';
import 'package:health_habit/widgets/ActivitiesList.dart';
import 'package:health_habit/widgets/AppDrawer.dart';
import 'package:health_habit/widgets/CreateActivityModal.dart';
import 'package:health_habit/screens/pomodoro_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  List<Widget> _screens = [
    ActivitiesList(),
    PomodoroScreen(),
  ];

  void _onBottomMenuItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Habits")),
      drawer: const Drawer(child: AppDrawer()),
      body: _screens[_selectedIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (_) {
                return const CreateActivityModal();
              });
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) => _onBottomMenuItemTap(index),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Hoje',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.timer),
              label: 'Pomodoro',
              backgroundColor: Colors.blue),
        ],
      ),
    );
  }
}
