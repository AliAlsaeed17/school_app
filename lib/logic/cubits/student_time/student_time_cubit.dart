import 'package:school_app/core/constants/app_packages.dart';

part 'student_time_state.dart';

class StudentTimeCubit extends Cubit<StudentTimeState> {
  StudentTimeCubit() : super(StudentTimeInitial());

  StudentTimeRepo studentTimeRepo = StudentTimeRepo();

  Future<void> getStudentTime() async {
    emit(StudentTimeLoading());
    try {
      List<StudentTime> studentTime = await studentTimeRepo.getStudentTime();
      await Future.delayed(const Duration(milliseconds: 1000));
      emit(StudentTimeLoadingSuccess(studentTime: studentTime));
    } catch (e) {
      emit(StudentTimeLoadingError(errormsg: e.toString()));
    }
  }
}
