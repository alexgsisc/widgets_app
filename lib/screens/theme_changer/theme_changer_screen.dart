import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/providers/theme_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {
  static const name = 'theme_changer_screen';
  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool isDark = ref.watch(isDarkProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Theme Changer',
        ),
        actions: [
          IconButton(
            onPressed: () {
              ref.read(isDarkProvider.notifier).update((value) => !value);
            },
            icon: Icon(
              isDark ? Icons.dark_mode_outlined : Icons.light_mode_outlined,
            ),
          )
        ],
      ),
      body: _ThemeChangerView(),
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Color> colorProvider = ref.watch(colorListProvider);
    final int selectedColor = ref.watch(selectedColorProvider);

    return ListView.builder(
      itemCount: colorProvider.length,
      itemBuilder: (context, index) {
        final color = colorProvider[index];
        return RadioListTile(
          title: Text(
            'Este color ',
            style: TextStyle(
              color: color,
            ),
          ),
          subtitle: Text('${color.value}'),
          activeColor: color,
          value: index,
          groupValue: selectedColor,
          onChanged: (value) {
            //ref.read(selectedColorProvider.notifier).update((color) => value!);
            ref.read(selectedColorProvider.notifier).state = value!;
          },
        );
      },
    );
  }
}
