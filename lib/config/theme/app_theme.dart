import 'package:flutter/material.dart';

const List<Color> _colorThemes = [
  Colors.blue,
  Colors.yellow,
  Colors.green,
];

class AppTheme {
  final int selectedColor;

  AppTheme({
    this.selectedColor = 0,
  }) : assert(
          selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
          'Color must be between 0 and ${_colorThemes.length}',
        );

  ThemeData get theme {
    return ThemeData(
        useMaterial3: true,
        colorSchemeSeed: _colorThemes[selectedColor],
        appBarTheme: const AppBarTheme(
          centerTitle: true,
        ));
  }
}
