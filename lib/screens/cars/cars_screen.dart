import 'package:flutter/material.dart';

class CarsScreen extends StatelessWidget {
  const CarsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cars + Material 3'),
      ),
      body: const Center(
        child: Text('Cars'),
      ),
    );
  }
}
