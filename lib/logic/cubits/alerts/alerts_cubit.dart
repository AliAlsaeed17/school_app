import 'package:school_app/core/constants/app_packages.dart';

part 'alerts_state.dart';

class AlertsCubit extends Cubit<AlertsState> {
  AlertsCubit() : super(AlertsInitial());

  AlertsRepo alertsRepo = AlertsRepo();

  Future<void> getAlerts() async {
    emit(AlertsLoading());
    try {
      await Future.delayed(const Duration(milliseconds: 1000));
      List<Alert> alerts = await alertsRepo.getAlerts();
      emit(AlertsLoadingSuccess(alerts: alerts));
    } catch (e) {
      emit(AlertsLoadingError(errormsg: e.toString()));
    }
  }
}
