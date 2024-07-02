import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:project_local_storage/core/constant.dart';
import 'package:project_local_storage/model/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<NoteCubitState> {
  AddNoteCubit() : super(NoteCubitInitial());

  addNote(NoteModel note) async {
    emit(NoteCubitLoading());
    try {
      var noteBox = Hive.box(kNotesBox);
      emit(NoteCubitSuccess());
      await noteBox.add(note);
    } catch (e) {
      NoteCubitFailure(errorMessage: e.toString());
    }
  }
}
