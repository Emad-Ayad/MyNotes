import 'package:flutter/material.dart';
import 'package:mynotes/views/widgets/notes_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotesBody(),
    );
  }
}