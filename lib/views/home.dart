import 'package:flutter/material.dart';

import 'package:noota/customs_widgets/Note_list.dart';
import 'package:noota/customs_widgets/appbar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'HomeView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(12).copyWith(top: 5),
        child: Column(
          children:   [
           CustomAppBar(),
           Notelist(),
          ],
        ),
      ),
    );
  }
}
