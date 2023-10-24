part of 'auth_cubit.dart';

@immutable
sealed class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

final class AuthInitial extends AuthState {}

final class LoadingState extends AuthState {}

final class ErrorState extends AuthState {
  final String errormsg;

  const ErrorState({required this.errormsg});
}

final class SubmitState extends AuthState {}

final class SuccessState extends AuthState {}
