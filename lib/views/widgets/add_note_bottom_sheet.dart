import 'package:flutter/material.dart';
import 'package:mynotes/views/widgets/custom_button.dart';
import 'package:mynotes/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 24),
            CustomTextField(hint: "title"),
            const SizedBox(height: 16),
            CustomTextField(hint: "content", maxLines: 5),
            const SizedBox(height: 64),
            const CustomButton(),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
