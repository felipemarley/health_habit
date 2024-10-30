import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pomodoro Timer',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const PomodoroScreen(),
    );
  }
}

class PomodoroScreen extends StatefulWidget {
  const PomodoroScreen({Key? key}) : super(key: key);

  @override
  State<PomodoroScreen> createState() => _PomodoroScreenState();
}

class _PomodoroScreenState extends State<PomodoroScreen> {
  static const int pomodoroTime = 25 * 60; // 25 minutes
  int secondsRemaining = pomodoroTime;
  Timer? timer;

  void startTimer() {
    timer?.cancel(); // Cancel any existing timer
    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (secondsRemaining > 0) {
        setState(() {
          secondsRemaining--;
        });
      } else {
        timer?.cancel();
      }
    });
  }

  void stopTimer() {
    timer?.cancel();
    setState(() {
      secondsRemaining = pomodoroTime; // Reset the timer
    });
  }

  void pauseTimer() {
    timer?.cancel();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  String formatTime(int seconds) {
    final minutes = seconds ~/ 60;
    final secondsLeft = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${secondsLeft.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          formatTime(secondsRemaining),
          style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: startTimer,
              child: const Text('Start'),
            ),
            const SizedBox(width: 8),
            ElevatedButton(
              onPressed: pauseTimer,
              child: const Text('Pause'),
            ),
            const SizedBox(width: 8),
            ElevatedButton(
              onPressed: stopTimer,
              child: const Text('Reset'),
            ),
          ],
        ),
      ],
    );
  }
}
