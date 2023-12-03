import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/consts.dart';
import 'package:notes_app/models/note_model.dart';
part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());

  Color color = const Color(0xFFe8e9f3);

  addNote(NoteModel noteModel) async {
    noteModel.color = color.value;
    emit(AddNotesLoading());
    try {
      var noteBox = Hive.box<NoteModel>(kNoteBox);

      await noteBox.add(noteModel);
      emit(AddNotesSuccess());
    } on Exception catch (e) {
      emit(AddNotesFailure(e.toString()));
    }
  }
}
