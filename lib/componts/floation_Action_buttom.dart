import 'package:flutter/material.dart';
import 'package:noota/const_value/consts.dart';

class floatingButtom extends StatelessWidget {
  const floatingButtom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: Kprimarycolor,
      child: Icon(
        Icons.add,
        color: Colors.white,
      ),
    );
  }
}
