import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/providers/counter_providers.dart';
import 'package:widgets_app/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {
  static const name = 'counter_screen';
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int counter = ref.watch(counterProvider);
    final bool isDark = ref.watch(isDarkProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Counter Screen',
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
      body: Center(
        child: Text(
          'Valor: $counter',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //ref.read(counterProvider.notifier).state++;
          ref.read(counterProvider.notifier).update((value) => value + 1);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
