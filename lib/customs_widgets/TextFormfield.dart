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
      padding: EdgeInsets.all(20).copyWith(bottom: 20),
      child: TextFormField(
        validator: (data) {
          if (data != null) {
            return ('filed is requried');
          }
        },
        onSaved: onSaved,
        maxLines: maxlines,
        cursorColor: Kprimarycolor,
        style: const TextStyle(
          color: Colors.white,
        ),
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: const Color.fromARGB(255, 185, 157, 157)),
          border: BuildBorder(Colors.white),
          enabledBorder: BuildBorder(const Color.fromARGB(255, 231, 213, 213)),
          focusedBorder: BuildBorder(const Color.fromARGB(255, 160, 90, 68)),
        ),
      ),
    );
  }

  OutlineInputBorder BuildBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: color),
    );
  }
}
