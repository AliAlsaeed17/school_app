import 'package:school_app/core/constants/app_packages.dart';
import 'package:school_app/data/repositories/teacher_notes_repo.dart';

part 'teacher_notes_state.dart';

class TeacherNotesCubit extends Cubit<TeacherNotesState> {
  TeacherNotesCubit() : super(TeacherNotesInitial());

  TeacherNotesRepo teacherNotesRepo = TeacherNotesRepo();

  Future<void> getTeacherNotes() async {
    emit(TeacherNotesLoading());
    try {
      List<TeacherNote> notes = await teacherNotesRepo.getTeacherNotes();
      await Future.delayed(const Duration(milliseconds: 1000));
      emit(TeacherNotesLoadingSuccess(notes: notes));
    } catch (e) {
      emit(TeacherNotesLoadingError(errormsg: e.toString()));
    }
  }
}
