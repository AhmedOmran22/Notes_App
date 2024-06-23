part of 'notes_cubit.dart';

@immutable
sealed class NotesStates {}

final class NotesInitial extends NotesStates {}

final class NotesLoading extends NotesStates {}

final class NotesSuccess extends NotesStates {
  final List<NoteModel> notes;

  NotesSuccess({required this.notes});
}

final class NotesFailure extends NotesStates {
  final String errMessage;

  NotesFailure({required this.errMessage});
}
