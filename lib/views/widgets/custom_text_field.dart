import 'package:flutter/material.dart';
import 'package:mynotes/constants/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hint, this.maxLines = 1, this.onSaved});

  final String hint;
  final int maxLines;

  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: AppColors.kPrimaryColor),
        enabledBorder: buildBorders(),
        focusedBorder: buildBorders(AppColors.kPrimaryColor),
        border: buildBorders(),
      ),
    );
  }

  OutlineInputBorder buildBorders([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(color: color ?? Colors.white70),
    );
  }
}
