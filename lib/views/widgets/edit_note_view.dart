import 'package:flutter/material.dart';
import 'package:mynotes/views/widgets/custom_app_bar.dart';
import 'package:mynotes/views/widgets/custom_text_field.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomAppBar(title: 'Edit Note',icon: Icons.check),
            SizedBox(height: 50),
            CustomTextField(hint: 'title'),
            SizedBox(height: 20),
            CustomTextField(hint: 'content',maxLines: 5),


          ],
        ),
      ),
    );
  }
}