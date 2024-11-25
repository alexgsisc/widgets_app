import 'package:flutter/material.dart';

const List<Color> colorThemes = [
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.pink,
  Colors.orange,
  Colors.purple
];

class AppTheme {
  final int selectedColor;
  final bool isDarkMode;

  AppTheme({this.selectedColor = 0, this.isDarkMode = false})
      : assert(
          selectedColor >= 0 && selectedColor <= colorThemes.length - 1,
          'Color must be between 0 and ${colorThemes.length}',
        );

  ThemeData get theme => ThemeData(
        useMaterial3: true,
        brightness: isDarkMode ? Brightness.dark : Brightness.light,
        colorSchemeSeed: colorThemes[selectedColor],
        appBarTheme: const AppBarTheme(
          centerTitle: true,
        ),
      );

  AppTheme copyWith({
    int? selectedColor,
    bool? isDarkMode,
  }) =>
      AppTheme(
        selectedColor: selectedColor ?? this.selectedColor,
        isDarkMode: isDarkMode ?? this.isDarkMode,
      );
}
