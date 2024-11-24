import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget {
  static const String name = 'card_scren';
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards + Material 3'),
      ),
      body: const Center(
        child: Text('Cards'),
      ),
    );
  }
}
