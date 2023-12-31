import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';
import 'package:notes_app/widgets/custom_list_tile.dart';

class NoteBodyContainer extends StatelessWidget {
  const NoteBodyContainer({
    super.key,
    required this.noteModel,
  });

  final NoteModel noteModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, left: 16, right: 16),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return EditNoteView(
              noteModel: noteModel,
            );
          }));
        },
        child: Container(
          padding: const EdgeInsets.only(
            top: 24,
            bottom: 24,
            left: 16,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(noteModel.color),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomListTile(
                noteModel: noteModel,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24.0, top: 16),
                child: Text(noteModel.date,
                    style: TextStyle(
                        fontSize: 16, color: Colors.black.withOpacity(0.4))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
