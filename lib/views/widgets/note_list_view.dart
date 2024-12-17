import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mynotes/cubits/notes_cubit/notes_cubit.dart';
import 'package:mynotes/data/model/note_model.dart';
import 'package:mynotes/views/widgets/note_tile.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes =BlocProvider.of<NotesCubit>(context).notes!;
        return ListView.builder(
          itemCount: notes.length,
          itemBuilder: (context, index) {
            return  Padding(
              padding:const EdgeInsets.symmetric(vertical: 4.0),
              child: NoteTile(note: notes[index]),
            );
          },
        );
      },
    );
  }
}
