import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:project_local_storage/core/constant.dart';
import 'package:project_local_storage/cubits/notes_cubit/notes_cubit_state.dart';

import 'package:project_local_storage/model/note_model.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? notes;
  fetchAllNotes() {
    var notesBox = Hive.box<NoteModel>(kNotesBox);

    notes = notesBox.values.toList();
    emit(NotesSuccess());
  }
}
