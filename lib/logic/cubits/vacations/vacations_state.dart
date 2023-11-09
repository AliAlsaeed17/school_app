part of 'vacations_cubit.dart';

sealed class VacationsState extends Equatable {
  const VacationsState();

  @override
  List<Object> get props => [];
}

final class VacationsInitial extends VacationsState {}

final class VacationsLoading extends VacationsState {}

final class VacationsLoadingError extends VacationsState {
  final String errormsg;

  const VacationsLoadingError({required this.errormsg});
}

final class VacationsLoadingSuccess extends VacationsState {
  final List<Vacation> vacations;

  const VacationsLoadingSuccess({required this.vacations});
}
