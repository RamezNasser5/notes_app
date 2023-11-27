import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/consts.dart';
import 'package:notes_app/models/note_model.dart';
part 'add_notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  addNote(NoteModel noteModel) async {
    emit(NotesLoading());
    try {
      var noteBox = Hive.box(kNoteBox);

      await noteBox.add(noteModel);
      emit(NotesSuccess());
    } on Exception catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }
}
