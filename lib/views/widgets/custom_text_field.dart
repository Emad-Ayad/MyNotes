import 'package:flutter/material.dart';
import 'package:mynotes/constants/constants.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({super.key, required this.hint, this.maxLines = 1});

  final String hint;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
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
