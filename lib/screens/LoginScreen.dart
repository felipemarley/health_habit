import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Authentication'),
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () => {
          Navigator.pushNamed(context, '/habits'),
        },
        child: const Text("Logar"),
      )),
    );
  }
}
