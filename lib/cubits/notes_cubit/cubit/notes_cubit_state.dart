part of 'notes_cubit.dart';

@immutable
sealed class NotesCubitState {}

final class NotesCubitInitial extends NotesCubitState {}

class NotesInitial extends NotesCubitState {}

class NotesLoading extends NotesCubitState {}

class NotesSuccess extends NotesCubitState {
  final List<dynamic> notes;

  NotesSuccess({required this.notes});
}

class NotesFailure extends NotesCubitState {
  final String errorMessage;

  NotesFailure(this.errorMessage);
}
