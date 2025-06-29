import 'package:flutter/material.dart';
import 'package:noota/views/edit.dart';
import 'package:noota/views/home.dart';
import 'package:noota/views/splash.dart';

void main() {
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
        SplashView.id:(context)=> const SplashView(),
      },
      initialRoute: SplashView.id,
    );
  }
}
