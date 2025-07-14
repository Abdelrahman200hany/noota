import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noota/componts/floation_Action_buttom.dart';
import 'package:noota/cubits/notes_cubit/Get_notes_cubit.dart';
import 'package:noota/customs_widgets/Note_list.dart';
import 'package:noota/customs_widgets/appbar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  static String id = 'HomeView';

  @override
  State<HomeView> createState() => _HomeViewState();
}


class _HomeViewState extends State<HomeView> {  @override
  void initState() {
    super.initState();
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
    );
  }
}
