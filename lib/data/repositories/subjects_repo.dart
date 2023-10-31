import 'package:school_app/core/constants/app_packages.dart';

class SubjectsRepo {
  SubjectsClient client = SubjectsClient();

  Future<List<Subject>> getSubjects() async {
    var response = await client.getSubjects();
    if (response != "") {
      return response.map<Subject>((json) => Subject.fromJson(json)).toList();
    }
    return [];
  }
}
