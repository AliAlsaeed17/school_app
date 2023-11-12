part of 'busses_cubit.dart';

sealed class BussesState extends Equatable {
  const BussesState();

  @override
  List<Object> get props => [];
}

final class BussesInitial extends BussesState {}

final class BussesLoading extends BussesState {}

final class BussesLoadingError extends BussesState {
  final String errormsg;

  const BussesLoadingError({required this.errormsg});
}

final class BussesLoadingSuccess extends BussesState {
  final List<Bus> busses;

  const BussesLoadingSuccess({required this.busses});
}
