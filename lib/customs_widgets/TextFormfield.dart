import 'package:flutter/material.dart';
import 'package:noota/const_value/consts.dart';

class CostomTextField extends StatelessWidget {
  const CostomTextField({
    super.key,
    required this.hint,
    this.maxlines = 1,
    required this.onSaved,
  });
  final String hint;
  final int maxlines;

  final Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const  EdgeInsets.all(20).copyWith(bottom: 20),
      child: TextFormField(
        validator: (data) {
          if (data?.isEmpty ?? true) {
            return ('filed is requried');
          }
        },
        onSaved: onSaved,
        maxLines: maxlines,
        cursorColor: kprimarycolor,
        style: const TextStyle(
          color: Colors.white,
        ),
        decoration: InputDecoration(
          hintText: hint,
          hintStyle:const TextStyle(color: const Color.fromARGB(255, 185, 157, 157)),
          border: buildBorder(const Color.fromARGB(255, 245, 145, 63)),
          enabledBorder: buildBorder(const Color.fromARGB(255, 210, 216, 221)),
          focusedBorder: buildBorder(const Color.fromARGB(255, 233, 210, 210)),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: color),
    );
  }
}
