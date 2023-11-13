import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note_body_conatainer_row.dart';

class NoteBodyContainerColumn extends StatelessWidget {
  const NoteBodyContainerColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        NoteBodyContainerRow(),
        Text(
          'Build your career with',
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        Text(
          'Ramez Nasser',
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: EdgeInsets.only(left: 200.0),
          child: Text(
            'Ramez Nasser',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
        ),
      ],
    );
  }
}
