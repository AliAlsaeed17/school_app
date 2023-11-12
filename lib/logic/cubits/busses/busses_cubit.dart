import 'package:school_app/core/constants/app_packages.dart';
import 'package:school_app/data/repositories/busses_repo.dart';

part 'busses_state.dart';

class BussesCubit extends Cubit<BussesState> {
  BussesCubit() : super(BussesInitial());

  BussesRepo bussesRepo = BussesRepo();

  Future<void> getBusses() async {
    emit(BussesLoading());
    try {
      await Future.delayed(const Duration(milliseconds: 1000));
      List<Bus> busses = await bussesRepo.getBusses();
      emit(BussesLoadingSuccess(busses: busses));
    } catch (e) {
      emit(BussesLoadingError(errormsg: e.toString()));
    }
  }
}
