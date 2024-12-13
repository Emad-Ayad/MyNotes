import 'package:flutter/material.dart';
import 'package:mynotes/constants/constants.dart';
import 'package:mynotes/views/widgets/add_note_bottom_sheet.dart';
import 'package:mynotes/views/widgets/notes_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return const AddNoteBottomSheet();
            },
          );
        },
        backgroundColor: AppColors.kPrimaryColor,
        shape: const CircleBorder(),
        child: const Icon(Icons.add,color: AppColors.darkBlack,),
      ),
      body: const NotesBody(),
    );
  }
}
