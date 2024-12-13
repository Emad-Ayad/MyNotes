import 'package:flutter/material.dart';
import 'package:mynotes/views/widgets/edit_note_view.dart';

class NoteTile extends StatelessWidget {
  const NoteTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return EditNoteView();
            },
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.yellow,
        ),
        child: const Padding(
          padding: EdgeInsets.only(top: 16.0, bottom: 16, left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  "Learn Flutter",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "If u wanna learn something come to me ",
                    style: TextStyle(color: Colors.black54, fontSize: 16),
                  ),
                ),
                trailing: Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 28,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 16.0),
                child: Text(
                  "Mar 25/2022",
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
