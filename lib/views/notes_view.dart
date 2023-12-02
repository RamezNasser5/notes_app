import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/consts.dart';
import 'package:notes_app/cubits/cubit/notes_cubit.dart';
import 'package:notes_app/widgets/add_notes_bottom_sheet.dart';
import 'package:notes_app/widgets/custom_search_icon.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: kPrimaryColor,
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                context: context,
                builder: (context) {
                  return const AddNotesBottomSheet();
                });
          },
          child: const Icon(Icons.add),
        ),
        appBar: AppBar(
          title: const Text(
            'Notes',
            style: TextStyle(fontSize: 25),
          ),
          actions: const [
            CustomSearchIcon(
              icons: Icons.search,
            )
          ],
          backgroundColor: Colors.transparent,
        ),
        body: BlocBuilder<NotesCubit, NotesState>(
          builder: (context, state) {
            return const NotesViewBody();
          },
        ),
      ),
    );
  }
}
