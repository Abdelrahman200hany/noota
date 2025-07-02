import 'package:flutter/material.dart';
import 'package:noota/customs_widgets/TextFormfield.dart';
import 'package:noota/customs_widgets/appbar.dart';

class EditView extends StatefulWidget {
  const EditView({super.key});
  static String id = 'EditView';

  @override
  State<EditView> createState() => _EditViewState();
}

class _EditViewState extends State<EditView> {
  String? title,content;
  GlobalKey<FormState>formKey=GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:const  EdgeInsets.all(12).copyWith(top: 5),
          child:  Form(
            key: formKey,
            child: Column(
              children: [
                 CustomAppBar(text: 'Edit', icon: Icons.check),
                CostomTextField(
                  onSaved: (data){
                    title=data;
                  },
                  maxlines: 2,
                  hint: 'title',
                ),
                CostomTextField(
                    onSaved: (data){
                    content=data;
                  },
                  hint: 'content',
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
