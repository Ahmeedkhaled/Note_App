import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/core/constant.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit_state.dart';
import 'package:note_app/model/note_model.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? notes;
  fetchAllNotes() {
    var notesBox = Hive.box<NoteModel>(kNotesBox);

    notes = notesBox.values.toList();
    emit(NotesSuccess());
  }
}
