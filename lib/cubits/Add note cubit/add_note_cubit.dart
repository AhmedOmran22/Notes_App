import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteStates> {


  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) 
  {

  }
}
