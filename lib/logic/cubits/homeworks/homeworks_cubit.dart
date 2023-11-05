import 'package:school_app/core/constants/app_packages.dart';

part 'homeworks_state.dart';

class HomeworksCubit extends Cubit<HomeworksState> {
  HomeworksCubit() : super(HomeworksInitial());

  HomeworksRepo homeworksRepo = HomeworksRepo();

  Future<void> getHomeworks() async {
    emit(HomeworksLoading());
    try {
      await Future.delayed(const Duration(milliseconds: 1000));
      List<Homework> homeworks = await homeworksRepo.getHomeworks();
      emit(HomeworksLoadingSuccess(homeworks: homeworks));
    } catch (e) {
      emit(HomeworksLoadingError(errormsg: e.toString()));
    }
  }
}
