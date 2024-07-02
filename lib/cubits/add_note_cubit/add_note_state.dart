part of 'add_note_cubit.dart';

@immutable
sealed class NoteCubitState {}

final class NoteCubitInitial extends NoteCubitState {}

final class NoteCubitLoading extends NoteCubitState {}

final class NoteCubitSuccess extends NoteCubitState {}

final class NoteCubitFailure extends NoteCubitState {
  final String errorMessage;

  NoteCubitFailure({required this.errorMessage});
}
