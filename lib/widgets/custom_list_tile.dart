import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/consts.dart';
import 'package:notes_app/cubits/cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.noteModel,
  });

  final NoteModel noteModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        noteModel.title,
        style: const TextStyle(fontSize: 26, color: Colors.black),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Text(
          noteModel.subTitle,
          style: TextStyle(fontSize: 20, color: Colors.black.withOpacity(0.5)),
        ),
      ),
      trailing: IconButton(
        onPressed: () {
          noteModel.delete();
          BlocProvider.of<NotesCubit>(context).fetchAllNotes();
          showSuccessSnackBar(context, 'Your Note deleted Successfuly');
        },
        icon: const Icon(
          Icons.delete,
          color: Colors.black,
          size: 28,
        ),
      ),
    );
  }
}
