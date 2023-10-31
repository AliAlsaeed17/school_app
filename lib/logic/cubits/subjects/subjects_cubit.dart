import 'package:school_app/core/constants/app_packages.dart';

part 'subjects_state.dart';

class SubjectsCubit extends Cubit<SubjectsState> {
  SubjectsCubit() : super(SubjectsInitial());

  SubjectsRepo subjectsRepo = SubjectsRepo();

  Future<void> getSubjects() async {
    emit(SubjectsLoading());
    try {
      await Future.delayed(const Duration(milliseconds: 1000));
      List<Subject> subjects = await subjectsRepo.getSubjects();
      emit(SubjectsLoadingSuccess(subjects: subjects));
    } catch (e) {
      emit(SubjectsLoadingError(errormsg: e.toString()));
    }
  }
}
