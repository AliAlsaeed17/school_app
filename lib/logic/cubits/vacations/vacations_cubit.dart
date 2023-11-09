import 'package:school_app/core/constants/app_packages.dart';

part 'vacations_state.dart';

class VacationsCubit extends Cubit<VacationsState> {
  VacationsCubit() : super(VacationsInitial());

  VacationsRepo vacationsRepo = VacationsRepo();

  Future<void> getVacations() async {
    emit(VacationsLoading());
    try {
      List<Vacation> vacations = await vacationsRepo.getVacations();
      await Future.delayed(const Duration(milliseconds: 1000));
      emit(VacationsLoadingSuccess(vacations: vacations));
    } catch (e) {
      emit(VacationsLoadingError(errormsg: e.toString()));
    }
  }
}
