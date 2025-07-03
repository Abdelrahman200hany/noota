import 'package:flutter/material.dart';
import 'package:noota/customs_widgets/TextFormfield.dart';
import 'package:noota/customs_widgets/buttoms.dart';

class AddModelbottomsheet extends StatelessWidget {
  const AddModelbottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return MyField();
  }
}

class MyField extends StatefulWidget {
  const MyField({
    super.key,
  });

  @override
  State<MyField> createState() => _MyFieldState();
}

class _MyFieldState extends State<MyField> {
  String? title, content;
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
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
          SizedBox(height: 100),
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
    );
  }
}
