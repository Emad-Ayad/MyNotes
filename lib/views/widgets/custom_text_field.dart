import 'package:flutter/material.dart';
import 'package:mynotes/constants/constants.dart';
 class CustomTextField extends StatelessWidget {
    CustomTextField({super.key, required this.hint});

   final String hint;
 
   @override
   Widget build(BuildContext context) {
     return TextField(
       decoration: InputDecoration(
         hintText: hint,
         hintStyle: const TextStyle(
           color: AppColors.kPrimaryColor
         ),
         enabledBorder: buildBorders(),
         focusedBorder: buildBorders(AppColors.kPrimaryColor),
         border: buildBorders(),
       ),
     );
   }

   OutlineInputBorder buildBorders([color]) {
     return OutlineInputBorder(
         borderRadius:BorderRadius.circular(16),
         borderSide: BorderSide(color: color?? Colors.white70),
       );
   }
 }
 