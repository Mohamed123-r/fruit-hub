import 'package:flutter/material.dart';

import '../../../domain/entities/bottom_navigation_bar_entity.dart';
import 'active_bottom_navigation_bar_item.dart';
import 'in_active_bottom_navigation_bar_item.dart';

class BottomNavigationBarItems extends StatelessWidget {
  const BottomNavigationBarItems(
      {super.key,
        required this.isActive,
        required this.bottomNavigationBarEntity});

  final bool isActive;
  final BottomNavigationBarEntity bottomNavigationBarEntity;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveBottomNavigationBarItem(
      name: bottomNavigationBarEntity.name,
      activeImageItem: bottomNavigationBarEntity.activeImageItem,
    )
        : InActiveBottomNavigationBarItem(
        inActiveImageItem: bottomNavigationBarEntity.inActiveImageItem);
  }
}
