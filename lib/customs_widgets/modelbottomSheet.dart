import 'package:flutter/material.dart';
import 'package:noota/customs_widgets/TextFormfield.dart';
import 'package:noota/customs_widgets/buttoms.dart';

class AddModelbottomsheet extends StatelessWidget {
  const AddModelbottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Column(
      
      children:  [
         CostomTextField(
          hint: 'title ',
        ),
        CostomTextField(
          hint: 'sub title ',
        ),
        Spacer(),
        CostomButtom(text: 'Add Node'),
      ],
    );
  }
}
