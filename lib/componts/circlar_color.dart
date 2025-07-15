import 'package:flutter/material.dart';

class CirclarColorAvatar extends StatelessWidget {
  const CirclarColorAvatar({super.key, required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: CircleAvatar(
        radius: 13,
        backgroundColor: color,
      ),
    );
  }
}
