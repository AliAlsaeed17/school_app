part of 'student_time_cubit.dart';

sealed class StudentTimeState extends Equatable {
  const StudentTimeState();

  @override
  List<Object> get props => [];
}

final class StudentTimeInitial extends StudentTimeState {}

final class StudentTimeLoading extends StudentTimeState {}

final class StudentTimeLoadingError extends StudentTimeState {
  final String errormsg;

  const StudentTimeLoadingError({required this.errormsg});
}

final class StudentTimeLoadingSuccess extends StudentTimeState {
  final List<StudentTime> studentTime;

  const StudentTimeLoadingSuccess({required this.studentTime});
}
