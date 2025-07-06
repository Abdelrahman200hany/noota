
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noota/cubits/add_note_cubit/add_node.dart';
import 'package:noota/cubits/add_note_cubit/add_state.dart';
import 'package:noota/customs_widgets/TextFormfield.dart';
import 'package:noota/customs_widgets/buttoms.dart';
import 'package:noota/models/note_model.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _MyFieldState();
}

class _MyFieldState extends State<AddNoteForm> {
  String? title, content;
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: ListView(
          children: [
            CostomTextField(
              onSaved: (data) {
                title = data;
              },
              maxlines: 2,
              hint: 'title ',
            ),
            CostomTextField(
              onSaved: (data) {
                content = data;
              },
              maxlines: 5,
              hint: 'sub title ',
            ),
            const SizedBox(height: 100),
            BlocBuilder<AddNoteCubit, AddNoteState>(
              builder: (context, state) {
                return CostomButtom(
                  isloading: state is AddNoteloading ? true : false,
                  text: 'Add Node',
                  ontap: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      NoteModel note = NoteModel(
                        subtitle: content!,
                        title: title!,
                        date: DateTime.now().year.toString(),
                      );
                      BlocProvider.of<AddNoteCubit>(context).addNote(note);
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}