import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/consts.dart';

part 'notes_cubit_state.dart';

class NotesCubit extends Cubit<NotesCubitState> {
  NotesCubit() : super(NotesCubitInitial());

  fetchAllNotes() {
    try {
      var noteBox = Hive.box(kNoteBox);

      emit(NotesSuccess(notes: noteBox.values.toList()));
    } on Exception catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }
}
