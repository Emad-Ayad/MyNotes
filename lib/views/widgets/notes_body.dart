import 'package:flutter/material.dart';
import 'package:mynotes/views/widgets/custom_app_bar.dart';
import 'package:mynotes/views/widgets/note_tile.dart';

class NotesBody extends StatelessWidget {
  const NotesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          CustomAppBar(),
          NoteTile()
        ],
      ),
    );
  }
}
