import 'package:bloc/bloc.dart';
import 'package:notes_app/models/note_model.dart';
part 'add_notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  addNote(NoteModel noteModel) {}
}
