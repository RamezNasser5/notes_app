import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_view_body_column.dart';

class NoteBodyContainer extends StatelessWidget {
  const NoteBodyContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24),
      child: Container(
        height: 250,
        width: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.orange,
        ),
        child: const NoteBodyContainerColumn(),
      ),
    );
  }
}
