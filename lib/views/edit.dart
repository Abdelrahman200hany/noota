import 'package:flutter/material.dart';
import 'package:noota/customs_widgets/TextFormfield.dart';
import 'package:noota/customs_widgets/appbar.dart';

class EditView extends StatelessWidget {
  const EditView({super.key});
  static String id = 'EditView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:const  EdgeInsets.all(12).copyWith(top: 5),
        child:  Column(
          children: const[
             CustomAppBar(text: 'Edit', icon: Icons.check),
            CostomTextField(
              hint: 'title',
            ),
            CostomTextField(
              hint: 'content',
              maxlines: 4,
            ),
          ],
        ),
      ),
    );
  }
}
