import 'package:flutter/material.dart';
import 'package:widgets_app/config/theme/app_theme.dart';
import 'package:widgets_app/screens/bottoms/bottom_screen.dart';
import 'package:widgets_app/screens/cards/cards_screen.dart';
import 'package:widgets_app/screens/home/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 0).theme,
      home: const HomeScreen(),
      routes: {
        '/cards': (context) => const CardsScreen(),
        '/bottoms': (context) => const BottomScreen()
      },
    );
  }
}
