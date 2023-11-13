import 'package:school_app/core/constants/app_packages.dart';

class TeacherNotesRepo {
  TeacherNotesClient client = TeacherNotesClient();

  Future<List<TeacherNote>> getTeacherNotes() async {
    var response = await client.getTeacherNotes();
    if (response != "") {
      return response
          .map<TeacherNote>((json) => TeacherNote.fromJson(json))
          .toList();
    }
    return [];
  }
}
