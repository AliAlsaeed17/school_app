import 'package:school_app/core/constants/app_packages.dart';
import 'package:school_app/data/repositories/complaints_repo.dart';

part 'complaints_state.dart';

class ComplaintsCubit extends Cubit<ComplaintsState> {
  ComplaintsCubit() : super(ComplaintsInitial());

  ComplaintsRepo complaintsRepo = ComplaintsRepo();

  Future<void> getComplaints() async {
    emit(ComplaintsLoading());
    try {
      await Future.delayed(const Duration(milliseconds: 1000));
      List<Complaint> complaints = await complaintsRepo.getComplaints();
      emit(ComplaintsLoadingSuccess(complaints: complaints));
    } catch (e) {
      emit(ComplaintsLoadingError(errormsg: e.toString()));
    }
  }
}
