part of 'complaints_cubit.dart';

sealed class ComplaintsState extends Equatable {
  const ComplaintsState();

  @override
  List<Object> get props => [];
}

final class ComplaintsInitial extends ComplaintsState {}

final class ComplaintsLoading extends ComplaintsState {}

final class ComplaintsLoadingError extends ComplaintsState {
  final String errormsg;

  const ComplaintsLoadingError({required this.errormsg});
}

final class ComplaintsLoadingSuccess extends ComplaintsState {
  final List<Complaint> complaints;

  const ComplaintsLoadingSuccess({required this.complaints});
}
