import 'package:flutter/material.dart';
import 'package:noota/const_value/consts.dart';

class CostomTextField extends StatelessWidget {
  const CostomTextField({
    super.key,
    required this.hint,
    this.maxlines = 1,
    @required this.onchange,
  });
  final String hint;
  final int maxlines;

  final Function(String data)? onchange;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20).copyWith(bottom: 20),
      child: TextFormField(
        maxLines: maxlines,
        cursorColor: Kprimarycolor,
        style: const TextStyle(
          color: Colors.white,
        ),
        onChanged: (data) {},
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: Colors.white),
          enabledBorder: BuildBorder(),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide:
                BorderSide(color: const Color.fromARGB(255, 167, 203, 240)),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder BuildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.white),
    );
  }
}
