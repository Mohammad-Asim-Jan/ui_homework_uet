import 'package:flutter/material.dart';

class IconContainerRound extends StatelessWidget {
  const IconContainerRound({super.key, required this.icon, required this.containerColor, required this.iconColor});

  final IconData icon;
  final Color containerColor;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: containerColor,
        shape: BoxShape.circle,
      ),
      child: Icon(icon, size: 28, color: iconColor, ),
    );
  }
}
