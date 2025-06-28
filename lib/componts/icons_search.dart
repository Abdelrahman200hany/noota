import 'package:flutter/material.dart';

class IconsSearch extends StatelessWidget {
  const IconsSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
  
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: IconButton(
          onPressed: () {},
          icon:const Icon(
            Icons.search,
            color: Colors.white,
          )),
    );
  }
}
