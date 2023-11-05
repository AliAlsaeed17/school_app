import 'package:school_app/core/constants/app_packages.dart';

class HomeworksRepo {
  HomeworksClient client = HomeworksClient();

  Future<List<Homework>> getHomeworks() async {
    var response = await client.getHomeworks();
    if (response != "") {
      return response.map<Homework>((json) => Homework.fromJson(json)).toList();
    }
    return [];
  }
}
