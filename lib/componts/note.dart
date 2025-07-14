import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noota/cubits/notes_cubit/Get_notes_cubit.dart';

import 'package:noota/models/note_model.dart';

import 'package:noota/views/edit.dart';

class Note extends StatelessWidget {
  const Note({super.key, required this.color, required this.note});
  final NoteModel note;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, EditView.id, arguments: note);
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
              title: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  note.title,
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
              subtitle: Text(
                note.subtitle,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  note.delete();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                },
                icon: const Icon(Icons.delete, color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 20,
                top: 20,
              ),
              child: Text(
                note.date,
                style: const TextStyle(
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
