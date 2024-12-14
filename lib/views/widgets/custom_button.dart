import 'package:flutter/material.dart';
import 'package:mynotes/constants/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap});

  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ,
      child: Container(
        height: 48,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          color: AppColors.kPrimaryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: const Center(
          child: Text(
            "Add",
            style: TextStyle(color: AppColors.darkBlack),
          ),
        ),
      ),
    );
  }
}
