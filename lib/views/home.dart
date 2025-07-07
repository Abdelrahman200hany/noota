import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noota/componts/floation_Action_buttom.dart';
import 'package:noota/cubits/notes_cubit/Get_notes_cubit.dart';
import 'package:noota/customs_widgets/Note_list.dart';
import 'package:noota/customs_widgets/appbar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'HomeView';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => NotesCubit(),
        child: Scaffold(
          floatingActionButton: const FloatingButtom(),
          body: Padding(
            padding: const EdgeInsets.all(12).copyWith(top: 5),
            child: const Column(
              children: [
                CustomAppBar(
                  text: 'noota',
                  icon: Icons.search,
                ),
                Notelist(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
