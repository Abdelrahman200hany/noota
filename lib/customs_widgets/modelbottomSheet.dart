import 'package:flutter/material.dart';
import 'package:noota/customs_widgets/TextFormfield.dart';
import 'package:noota/customs_widgets/buttoms.dart';

class AddModelbottomsheet extends StatelessWidget {
  const AddModelbottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        CostomTextField(
          hint: 'title ',
        ),
        CostomTextField(
          maxlines: 4,
          hint: 'sub title ',
        ),
        SizedBox(height: 150),
        CostomButtom(text: 'Add Node'),
      ],
    );
  }
}
