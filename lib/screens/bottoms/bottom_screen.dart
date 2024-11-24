import 'package:flutter/material.dart';

class BottomScreen extends StatelessWidget {
  static const String name = 'bottom_scren';
  const BottomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttoms + Material 3'),
      ),
      body: const Center(
        child: Text('Buttoms'),
      ),
    );
  }
}
