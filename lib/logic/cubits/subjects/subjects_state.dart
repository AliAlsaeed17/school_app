part of 'subjects_cubit.dart';

sealed class SubjectsState extends Equatable {
  const SubjectsState();

  @override
  List<Object> get props => [];
}

final class SubjectsInitial extends SubjectsState {}

final class SubjectsLoading extends SubjectsState {}

final class SubjectsLoadingError extends SubjectsState {
  final String errormsg;

  const SubjectsLoadingError({required this.errormsg});
}

final class SubjectsLoadingSuccess extends SubjectsState {
  final List<Subject> subjects;

  const SubjectsLoadingSuccess({required this.subjects});
}
