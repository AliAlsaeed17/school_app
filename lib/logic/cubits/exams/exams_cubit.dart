import 'package:school_app/core/constants/app_packages.dart';

part 'exams_state.dart';

class ExamsCubit extends Cubit<ExamsState> {
  ExamsCubit() : super(ExamsInitial());

  ExamsRepo examsRepo = ExamsRepo();

  Future<void> getExams() async {
    emit(ExamsLoading());
    try {
      await Future.delayed(const Duration(milliseconds: 1000));
      List<Exam> exams = await examsRepo.getExams();
      emit(ExamsLoadingSuccess(exams: exams));
    } catch (e) {
      emit(ExamsLoadingError(errormsg: e.toString()));
    }
  }
}
