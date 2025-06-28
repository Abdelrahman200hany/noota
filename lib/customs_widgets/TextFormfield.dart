import 'package:flutter/material.dart';
import 'package:noota/const_value/consts.dart';

class CostomTextField extends StatelessWidget {
  const CostomTextField({
    super.key,
    required this.hint,
    @required this.onchange,
  });
  final String hint;

  final Function(String data)? onchange;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20).copyWith(bottom: 20),
      child: TextFormField(
        style: TextStyle(
          color: Colors.white,
        ),
        onChanged: (data) {},
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: Colors.white),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: const Color.fromARGB(255, 167, 203, 240)),
          ),
        ),
      ),
    );
  }
}

class CostomTextFormFieldPassword extends StatefulWidget {
  const CostomTextFormFieldPassword({
    super.key,
    required this.hint,
    required this.Label,
    required this.onchange,
  });
  final String hint;
  final String Label;
  final Function(String data)? onchange;

  @override
  State<CostomTextFormFieldPassword> createState() =>
      _CostomTextFormFieldPasswordState();
}

class _CostomTextFormFieldPasswordState
    extends State<CostomTextFormFieldPassword> {
  bool IsHidden = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8),
      child: TextFormField(
        validator: (data) {
          if (data!.isEmpty) {
            return ' field is required';
          }
        },
        style: TextStyle(
          color: Colors.white,
        ),
        obscureText: IsHidden,
        onChanged: widget.onchange,
        decoration: InputDecoration(
          suffix: IconButton(
            onPressed: () {
              IsHidden = !IsHidden;
              setState(() {});
            },
            icon: Icon(
              IsHidden ? Icons.visibility_off_sharp : Icons.visibility,
              color: Colors.white,
            ),
          ),
          hintText: widget.hint,
          hintStyle: TextStyle(color: const Color.fromARGB(255, 221, 214, 214)),
          labelText: widget.Label,
          labelStyle: TextStyle(color: Colors.white),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
