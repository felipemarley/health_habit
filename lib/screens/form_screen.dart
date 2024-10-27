import 'package:flutter/material.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form'),
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () => {
          Navigator.pushNamed(context, '/main'),
        },
        child: const Text("Form"),
      )),
    );
  }
}