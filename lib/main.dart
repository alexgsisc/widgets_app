import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/router/app_router.dart';
import 'package:widgets_app/config/theme/app_theme.dart';
import 'package:widgets_app/providers/theme_provider.dart';

void main() {
  //Agregamos ProviderScope nos ayuda para escuchar todos los riverpod del proyecto
  runApp(
    const ProviderScope(
      child: MainApp(),
    ),
  );
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //final int selectedColor = ref.watch(selectedColorProvider);
    //final bool isDark = ref.watch(isDarkProvider);
    final AppTheme appTheme = ref.watch(themeNotifierProvider);

    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(
        isDarkMode: appTheme.isDarkMode,
        selectedColor: appTheme.selectedColor,
      ).theme,
    );
  }
}
