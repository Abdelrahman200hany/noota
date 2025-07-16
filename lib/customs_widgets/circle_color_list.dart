import 'package:flutter/material.dart';
import 'package:noota/componts/circlar_color.dart';
import 'package:noota/const_value/consts.dart';

class CircleColorList extends StatefulWidget {
  const CircleColorList({super.key});

  @override
  State<CircleColorList> createState() => _CircleColorListState();
}

int currentIndex = 0;

class _CircleColorListState extends State<CircleColorList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 33,
        child: ListView.builder(
            itemCount: kcolorPicker.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(right: 6),
                  child: GestureDetector(
                    onTap: () {
                      currentIndex = index;
                      setState(() {});
                    },
                    child: ColorItem(
                      color: kcolorPicker[index],
                      isclicked: currentIndex == index,
                    ),
                  ),
                )));
  }
}
