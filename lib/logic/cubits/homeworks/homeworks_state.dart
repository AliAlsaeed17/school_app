part of 'homeworks_cubit.dart';

sealed class HomeworksState extends Equatable {
  const HomeworksState();

  @override
  List<Object> get props => [];
}

final class HomeworksInitial extends HomeworksState {}

final class HomeworksLoading extends HomeworksState {}

final class HomeworksLoadingError extends HomeworksState {
  final String errormsg;

  const HomeworksLoadingError({required this.errormsg});
}

final class HomeworksLoadingSuccess extends HomeworksState {
  final List<Homework> homeworks;

  const HomeworksLoadingSuccess({required this.homeworks});
}
