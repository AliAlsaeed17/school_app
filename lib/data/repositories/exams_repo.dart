import 'package:school_app/core/constants/app_packages.dart';

class ExamsRepo {
  ExamsClient client = ExamsClient();

  Future<List<Exam>> getExams() async {
    var response = await client.getExams();
    if (response != "") {
      return response.map<Exam>((json) => Exam.fromJson(json)).toList();
    }
    return [];
  }
}
