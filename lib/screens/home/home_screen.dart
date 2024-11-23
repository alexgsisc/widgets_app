import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _BodyHomeView(),
    );
  }
}

class _BodyHomeView extends StatelessWidget {
  const _BodyHomeView();

  @override
  Widget build(BuildContext context) {
    return Container(); //ListView.builder(itemBuilder: itemBuilder);
  }
}
