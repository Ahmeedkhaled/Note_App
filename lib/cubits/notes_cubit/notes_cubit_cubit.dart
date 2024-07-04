import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:project_local_storage/core/constant.dart';
import 'package:project_local_storage/model/note_model.dart';

part 'notes_cubit_state.dart';

class NotesCubit extends Cubit<NotesCubitState> {
  NotesCubit() : super(NotesCubitInitial());

  fetchAllNotes() {
    try {
      var notebox = Hive.box<NoteModel>(kNotesBox);
      var note = notebox.values.toList();
      emit(NotesCubitSuccess(notes: note));
    } catch (e) {
      emit(NotesCubitFailure(errMessage: e.toString()));
    }
  }
}
