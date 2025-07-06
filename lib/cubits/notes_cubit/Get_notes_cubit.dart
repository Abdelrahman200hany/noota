import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:noota/const_value/consts.dart';
import 'package:noota/cubits/notes_cubit/notes_stata.dart';
import 'package:noota/models/note_model.dart';

class NotesCubit extends Cubit<NotesStata> {
  NotesCubit() : super(NotesInitState());
  List<NoteModel>? nodes;
  fetchAllNotes() {
    var node = Hive.box<NoteModel>(knotebox);
    nodes = node.values.toList();
    emit(NotesSuccessState());
  }
}
