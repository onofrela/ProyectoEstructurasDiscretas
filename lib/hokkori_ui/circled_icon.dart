import 'package:flutter/material.dart';

class CircledIcon extends StatelessWidget {
  final Color color;
  final IconData iconData;
  final double size;
  const CircledIcon({super.key, required this.color, required this.iconData, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
      child: Center(
        child: Icon(
          iconData,
          color: Colors.white,
          size: ((size*9)/16),
        ),
      ),
    );
  }
}