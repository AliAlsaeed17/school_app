import 'package:school_app/core/constants/app_packages.dart';
import 'package:school_app/data/repositories/installments_repo.dart';

part 'installments_state.dart';

class InstallmentsCubit extends Cubit<InstallmentsState> {
  InstallmentsCubit() : super(InstallmentsInitial());

  InstallmentsRepo installmentsRepo = InstallmentsRepo();
  num remainingAmount = 0.0;

  Future<void> getInstallments() async {
    emit(InstallmentsLoading());
    try {
      await Future.delayed(const Duration(milliseconds: 3000));
      List<Installment> insatllments = await installmentsRepo.getInstallments();
      emit(InstallmentsLoadingSuccess(installments: insatllments));
      (state as InstallmentsLoadingSuccess).calculateRemainingAmount();
    } catch (e) {
      emit(InstallmentsLoadingError(errormsg: e.toString()));
    }
  }
}
