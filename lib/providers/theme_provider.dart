import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

//list the colors inmutable
final colorListProvider = Provider((ref) => colorThemes);

final isDarkProvider = StateProvider((ref) => false);

final selectedColorProvider = StateProvider((ref) => 0);

//Un objeto de tipo AppThe (custom)
final themeNotifierProvider = StateNotifierProvider<ThemeController, AppTheme>(
    (ref) => ThemeController());

//Puede ser Controller or Notifier
class ThemeController extends StateNotifier<AppTheme> {
  //STATE = Estado = new AppTheme()
  ThemeController() : super(AppTheme());

  void toggleDarkmode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
}
