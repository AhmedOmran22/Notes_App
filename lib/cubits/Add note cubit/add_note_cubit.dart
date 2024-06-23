import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constans.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteStates> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) async {
    try {
      emit(AddNoteLoading());
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
    } catch (e) {
      emit(AddNoteFailure(errMessage: e.toString()));
    }
  }
}
