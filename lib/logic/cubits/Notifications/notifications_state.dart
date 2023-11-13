part of 'notifications_cubit.dart';

sealed class NotificationsState extends Equatable {
  const NotificationsState();

  @override
  List<Object> get props => [];
}

final class NotificationsInitial extends NotificationsState {}

final class NotificationsLoading extends NotificationsState {}

final class NotificationsLoadingError extends NotificationsState {
  final String errormsg;

  const NotificationsLoadingError({required this.errormsg});
}

final class NotificationsLoadingSuccess extends NotificationsState {
  final List<UserNotification> notifications;

  const NotificationsLoadingSuccess({required this.notifications});
}
