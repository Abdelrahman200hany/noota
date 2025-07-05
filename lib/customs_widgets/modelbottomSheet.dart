import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:noota/cubits/add_note_cubit/add_node.dart';
import 'package:noota/cubits/add_note_cubit/add_state.dart';
import 'package:noota/customs_widgets/TextFormfield.dart';
import 'package:noota/customs_widgets/buttoms.dart';
import 'package:noota/models/note_model.dart';

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
               print('success ');
            Navigator.pop(context);
               
          }
        },
        builder: (context, state) {
          return  const AddNoteForm();
        },
      ),
    );
  }
}

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
                  text: 'Add Node',
                  ontap: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      NoteModel note =
                          NoteModel(subtitle: content!, title: title!);
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
