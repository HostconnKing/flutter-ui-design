import 'package:flutter/material.dart';
import 'package:flutter_ui_sedign/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gamify',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: const MainScreen(),
    );
  }
}
