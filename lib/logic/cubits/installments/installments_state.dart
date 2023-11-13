// ignore_for_file: must_be_immutable

part of 'installments_cubit.dart';

sealed class InstallmentsState extends Equatable {
  const InstallmentsState();

  @override
  List<Object> get props => [];
}

final class InstallmentsInitial extends InstallmentsState {}

final class InstallmentsLoading extends InstallmentsState {}

final class InstallmentsLoadingError extends InstallmentsState {
  final String errormsg;

  const InstallmentsLoadingError({required this.errormsg});
}

final class InstallmentsLoadingSuccess extends InstallmentsState {
  final List<Installment> installments;
  num remainingAmount = 0.0;

  InstallmentsLoadingSuccess({required this.installments});

  void calculateRemainingAmount() {
    remainingAmount = 0.0;
    for (var installment in installments) {
      remainingAmount += installment.amount;
    }
  }
}
