part of 'exams_cubit.dart';

sealed class ExamsState extends Equatable {
  const ExamsState();

  @override
  List<Object> get props => [];
}

final class ExamsInitial extends ExamsState {}

final class ExamsLoading extends ExamsState {}

final class ExamsLoadingError extends ExamsState {
  final String errormsg;

  const ExamsLoadingError({required this.errormsg});
}

final class ExamsLoadingSuccess extends ExamsState {
  final List<Exam> exams;

  const ExamsLoadingSuccess({required this.exams});
}
