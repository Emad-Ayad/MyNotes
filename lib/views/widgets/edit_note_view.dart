import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mynotes/cubits/notes_cubit/notes_cubit.dart';
import 'package:mynotes/data/model/note_model.dart';
import 'package:mynotes/views/widgets/custom_app_bar.dart';
import 'package:mynotes/views/widgets/custom_text_field.dart';

class EditNoteView extends StatefulWidget {
  const EditNoteView({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
             CustomAppBar(
              onPressed: (){
                widget.note.title= title ?? widget.note.title;
                widget.note.subTitle= content ?? widget.note.subTitle;
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).getNotes();
                Navigator.pop(context);
              },
              title: 'Edit Note',
              icon: Icons.check,
            ),
            const SizedBox(height: 50),
            CustomTextField(
              hint: widget.note.title,
              onChanged: (value) {
                title = value;
              },
            ),
            const SizedBox(height: 20),
            CustomTextField(
              hint: widget.note.subTitle,
              maxLines: 5,
              onChanged: (value) {
                content = value;
              },
            ),
          ],
        ),
      ),
    );
  }
}
