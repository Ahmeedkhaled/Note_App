import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_note_state.dart';

class NoteCubitCubit extends Cubit<NoteCubitState> {
  NoteCubitCubit() : super(NoteCubitInitial());
}
