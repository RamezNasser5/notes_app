import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_notes_cubit.dart';
import 'package:notes_app/cubits/cubit/notes_cubit.dart';
import 'package:notes_app/widgets/add_note_form.dart';

class AddNotesBottomSheet extends StatelessWidget {
  const AddNotesBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 16),
        child: BlocConsumer<AddNotesCubit, AddNotesState>(
          listener: (context, state) {
            if (state is AddNotesFailure) {}
            if (state is AddNotesSuccess) {
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return AbsorbPointer(
              absorbing: state is AddNotesLoading ? true : false,
              child: const SingleChildScrollView(child: NoteForm()),
            );
          },
        ),
      ),
    );
  }
}
