import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noota/cubits/add_note_cubit/add_node.dart';
import 'package:noota/customs_widgets/TextFormfield.dart';
import 'package:noota/customs_widgets/buttoms.dart';

class AddModelbottomsheet extends StatelessWidget {
  const AddModelbottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: const AddField(),
    );
  }
}

class AddField extends StatefulWidget {
  const AddField({
    super.key,
  });

  @override
  State<AddField> createState() => _MyFieldState();
}

class _MyFieldState extends State<AddField> {
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
            CostomButtom(
              text: 'Add Node',
              ontap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
