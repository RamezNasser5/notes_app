import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_search_icon.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Edit Note',
          style: TextStyle(fontSize: 25),
        ),
        actions: const [
          CustomSearchIcon(
            icons: Icons.check,
          )
        ],
        backgroundColor: Colors.transparent,
      ),
      body: const Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: CustomTextField(hint: 'Title'),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: CustomTextField(
              hint: 'Content',
              maxLine: 5,
            ),
          ),
        ],
      ),
    );
  }
}
