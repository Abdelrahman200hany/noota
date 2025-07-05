import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:noota/const_value/consts.dart';
import 'package:noota/methods/bloc_observe.dart';
import 'package:noota/models/note_model.dart';
import 'package:noota/views/edit.dart';
import 'package:noota/views/home.dart';
import 'package:noota/views/splash.dart';

void main() async {
  
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(knotebox);
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      routes: {
        HomeView.id: (context) => const HomeView(),
        EditView.id: (context) => const EditView(),
        SplashView.id: (context) => const SplashView(),
      },
      initialRoute: SplashView.id,
    );
  }
}
