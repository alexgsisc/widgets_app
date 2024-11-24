import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subtitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Bottoms',
    subtitle: 'Bottoms in Desing System',
    link: '/bottoms',
    icon: Icons.smart_button_outlined,
  ),
  MenuItem(
    title: 'Cars',
    subtitle: 'Cars in Desing System',
    link: '/cars',
    icon: Icons.credit_card_outlined,
  ),
];
