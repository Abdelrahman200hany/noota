import 'package:flutter/material.dart';
import 'package:noota/componts/note.dart';

class Notelist extends StatelessWidget {
  const Notelist({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(top: 15),
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Note(
              color: Color(0xff126584 * (index + 1)),
            ),
          ),
          itemCount: 20,
        ),
      ),
    );
  }
}
