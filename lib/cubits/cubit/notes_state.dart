part of 'notes_cubit.dart';

@immutable
sealed class NotesStates {}

final class NotesInitial extends NotesStates {}

final class NoteSuccess extends NotesStates{}