import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:noota/const_value/consts.dart';
import 'package:noota/cubits/add_note_cubit/add_state.dart';
import 'package:noota/models/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInit());
  addNote(NoteModel note) async {
    emit(AddNoteloading());
    try {
      var notesbox = Hive.box<NoteModel>(knotebox);
      await notesbox.add(note);
      emit(AddNoteSecess());
    }  catch (e) {
      emit(AddNoteFailuer());
    }
  }
}
