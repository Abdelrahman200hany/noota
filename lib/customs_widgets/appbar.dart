import 'package:flutter/material.dart';
import 'package:noota/componts/icons_search.dart';
import 'package:noota/const_value/consts.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:const   [
        Text(
          'Noota ',
          style:  TextStyle(
            fontSize: 30,
            // fontFamily: '',
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        IconsSearch(),
      ],
    );
  }
}
