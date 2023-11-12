part of 'alerts_cubit.dart';

sealed class AlertsState extends Equatable {
  const AlertsState();

  @override
  List<Object> get props => [];
}

final class AlertsInitial extends AlertsState {}

final class AlertsLoading extends AlertsState {}

final class AlertsLoadingError extends AlertsState {
  final String errormsg;

  const AlertsLoadingError({required this.errormsg});
}

final class AlertsLoadingSuccess extends AlertsState {
  final List<Alert> alerts;

  const AlertsLoadingSuccess({required this.alerts});
}
