import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InActiveBottomNavigationBarItem extends StatelessWidget {
  const InActiveBottomNavigationBarItem(
      {super.key, required this.inActiveImageItem});

  final String inActiveImageItem;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      inActiveImageItem,
      fit: BoxFit.scaleDown,
    );
  }
}