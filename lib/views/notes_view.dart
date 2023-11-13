import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_search_icon.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notes',
          style: TextStyle(fontSize: 25),
        ),
        actions: const [CustomSearchIcon()],
        backgroundColor: Colors.transparent,
      ),
      body: const NotesViewBody(),
    );
  }
}
