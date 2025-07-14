import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noota/cubits/notes_cubit/Get_notes_cubit.dart';
import 'package:noota/customs_widgets/TextFormfield.dart';
import 'package:noota/customs_widgets/appbar.dart';
import 'package:noota/models/note_model.dart';

class EditView extends StatefulWidget {
  const EditView({super.key});
  static String id = 'EditView';

  @override
  State<EditView> createState() => _EditViewState();
}

class _EditViewState extends State<EditView> {
  String? title, content;
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    NoteModel note = ModalRoute.of(context)!.settings.arguments as NoteModel;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12).copyWith(top: 5),
          child: Form(
            key: formKey,
            child: Column(
              
              children: [
                CustomAppBar(
                    text: 'Edit',
                    icon: Icons.check,
                    onPressed: () {
                      note.title = title ?? note.title;
                      note.subtitle = content ?? note.subtitle;
                      note.save();
                      BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                      Navigator.pop(context);
                    }),
                CostomTextField(
                  onChanged: (data) {
                    title = data;
                  },
                  maxlines: 2,
                  hint: note.title,
                ),
                CostomTextField(
                  onChanged: (data) {
                    content = data;
                  },
                  hint: note.subtitle,
                  maxlines: 5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
