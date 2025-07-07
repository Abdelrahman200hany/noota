import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noota/cubits/add_note_cubit/add_node.dart';
import 'package:noota/cubits/add_note_cubit/add_state.dart';
import 'package:noota/cubits/notes_cubit/Get_notes_cubit.dart';
import 'package:noota/customs_widgets/add_note_form.dart';

class AddModelbottomsheet extends StatelessWidget {
  const AddModelbottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailuer) {
            print('error message ');
          }
          if (state is AddNoteSucess) {
            BlocProvider.of<NotesCubit>(context).nodes;
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
              absorbing: state is AddNoteloading ? true : false,
              child: const AddNoteForm());
        },
      ),
    );
  }
}
