import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.color, required this.isclicked});
  final Color color;
  final bool isclicked;
  @override
  Widget build(BuildContext context) {
    return isclicked
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 19,
            child: CircleAvatar(
              radius: 17,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 17,
            backgroundColor: color,
          );
  }
}
