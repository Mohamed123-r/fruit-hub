import 'package:flutter/material.dart';

class CartActionButton extends StatelessWidget {
  const CartActionButton({
    super.key,
    required this.onPressed,
    required this.color,
    required this.icon,
    required this.iconColor,
  });

  final void Function() onPressed;
  final Color color;
  final IconData icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: CircleAvatar(
          radius: 12,
          backgroundColor: color,
          child: Icon(
            icon,
            color: iconColor,
          )),
    );
  }
}
