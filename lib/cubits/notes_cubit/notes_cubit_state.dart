part of 'notes_cubit_cubit.dart';

@immutable
abstract class NotesCubitState {}

class NotesCubitInitial extends NotesCubitState {}

class NotesCubitLoading extends NotesCubitState {}

class NotesCubitSuccess extends NotesCubitState {
  final List<NoteModel> notes;

  NotesCubitSuccess({required this.notes});
}

class NotesCubitFailure extends NotesCubitState {
  final String errMessage;

  NotesCubitFailure({required this.errMessage});
}
