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
          border: BuildBorder(Color.fromARGB(255, 245, 145, 63)),
          enabledBorder: BuildBorder(const Color.fromARGB(255, 210, 216, 221)),
          focusedBorder: BuildBorder( const Color.fromARGB(255, 233, 210, 210)),
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
