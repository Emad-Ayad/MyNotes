import 'package:flutter/material.dart';
import 'package:mynotes/views/widgets/note_tile.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context,index){
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 4.0),
            child: NoteTile(),
          );
        }
    );
  }
}
