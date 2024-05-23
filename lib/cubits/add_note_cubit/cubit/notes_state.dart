part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

class NotesInitial extends NotesState {}

class NotesLoading extends NotesState {}

class Notessuccess extends NotesState {
  final List<NoteModel> notes;

  Notessuccess(this.notes);
}

class Notesfailure extends NotesState {
  final String errMessage;

  Notesfailure(this.errMessage);
}
