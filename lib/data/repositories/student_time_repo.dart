import 'package:school_app/core/constants/app_packages.dart';

class StudentTimeRepo {
  StudentTimeClient client = StudentTimeClient();

  Future<List<StudentTime>> getStudentTime() async {
    var response = await client.getStudentTime();
    if (response != "") {
      return response
          .map<StudentTime>((json) => StudentTime.fromJson(json))
          .toList();
    }
    return [];
  }
}
