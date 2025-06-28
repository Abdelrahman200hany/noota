import 'package:flutter/material.dart';
import 'package:noota/const_value/consts.dart';
import 'package:noota/customs_widgets/modelbottomSheet.dart';

class floatingButtom extends StatelessWidget {
  const floatingButtom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
          shape:RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
            context: context,
            builder: (context) {
              return const AddModelbottomsheet();
            });
      },
      backgroundColor: Kprimarycolor,
      child:const  Icon(
        Icons.add,
        color: Colors.white,
      ),
    );
  }
}
