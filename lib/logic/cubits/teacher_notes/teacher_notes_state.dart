part of 'teacher_notes_cubit.dart';

sealed class TeacherNotesState extends Equatable {
  const TeacherNotesState();

  @override
  List<Object> get props => [];
}

final class TeacherNotesInitial extends TeacherNotesState {}

final class TeacherNotesLoading extends TeacherNotesState {}

final class TeacherNotesLoadingError extends TeacherNotesState {
  final String errormsg;

  const TeacherNotesLoadingError({required this.errormsg});
}

final class TeacherNotesLoadingSuccess extends TeacherNotesState {
  final List<TeacherNote> notes;

  const TeacherNotesLoadingSuccess({required this.notes});
}
