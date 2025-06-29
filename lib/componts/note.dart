import 'package:flutter/material.dart';
import 'package:noota/const_value/consts.dart';
import 'package:noota/views/edit.dart';

class Note extends StatelessWidget {
  const Note({super.key, required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, EditView.id);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: color,
          border: Border.all(color: Colors.black),
        ),
        padding: const EdgeInsets.only(top: 10, left: 10, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  'noteone ',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
              subtitle: const Text(
                'this is the frist node i have do so i want to write more ',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.delete, color: Colors.black),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                right: 20,
                top: 20,
              ),
              child: Text(
                'may 23 / 10',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
