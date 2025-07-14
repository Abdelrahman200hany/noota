import 'package:flutter/material.dart';
import 'package:noota/const_value/consts.dart';
import 'package:noota/customs_widgets/modelbottomSheet.dart';

class FloatingButtom extends StatelessWidget {
  const FloatingButtom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            context: context,
            builder: (context) {
              return Padding(
                  padding: EdgeInsets.only(top: 12),
                  child: const AddModelbottomsheet());
            });
      },
      backgroundColor: kprimarycolor,
      child: const Icon(
        Icons.add,
        color: Colors.white,
      ),
    );
  }
}
