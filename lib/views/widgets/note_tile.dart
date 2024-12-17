import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mynotes/cubits/notes_cubit/notes_cubit.dart';
import 'package:mynotes/data/model/note_model.dart';
import 'package:mynotes/views/widgets/edit_note_view.dart';

class NoteTile extends StatelessWidget {
  const NoteTile({super.key, required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return EditNoteView(
                note: note,
              );
            },
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.yellow,
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0, bottom: 16, left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  note.title,
                  style: const TextStyle(color: Colors.black, fontSize: 20),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    note.subTitle,
                    style: const TextStyle(color: Colors.black54, fontSize: 16),
                  ),
                ),
                trailing: IconButton(
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 28,
                  ),
                  onPressed: () {
                    note.delete();
                    BlocProvider.of<NotesCubit>(context).getNotes();
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Text(
                  note.date,
                  style: const TextStyle(color: Colors.black, fontSize: 14),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
