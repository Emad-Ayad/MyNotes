import 'package:flutter/material.dart';
import 'package:mynotes/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Notes",
            style: TextStyle(
              fontSize: 28,
            ),
          ),
          CustomSearchIcon(),

        ],
      ),
    );
  }
}
