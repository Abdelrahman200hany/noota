import 'package:flutter/material.dart';

class IconsCompont extends StatelessWidget {
  const IconsCompont({super.key, required this.icon});
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: IconButton(
          onPressed: () {},
          icon: Icon(
            icon,
            color: Colors.white,
          )),
    );
  }
}
