import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noota/componts/note.dart';
import 'package:noota/cubits/notes_cubit/Get_notes_cubit.dart';
import 'package:noota/cubits/notes_cubit/notes_stata.dart';
import 'package:noota/models/note_model.dart';

class Notelist extends StatelessWidget {
  const Notelist({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesStata>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).nodes!;

        return Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ListView.builder(
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Note(
                  note: notes[index],
                  color: Color(0xff569735 * (index + 1)),
                ),
              ),
              itemCount: notes.length,
            ),
          ),
        );
      },
    );
  }
}
