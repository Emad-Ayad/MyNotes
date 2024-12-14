import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mynotes/views/screens/home_screen.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('notes_box');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily:'Poppins',brightness: Brightness.dark),
      home: const HomeScreen(),
    );
  }
}