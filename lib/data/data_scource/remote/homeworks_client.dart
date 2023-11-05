// ignore_for_file: file_names

import 'package:school_app/core/constants/app_packages.dart';

class HomeworksClient {
  Dio dio = Dio();

  Future<dynamic> getHomeworks() async {
    var response = await dio.get(
      AppApiLinks.homeworks,
      options: Options(
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      ),
    );
    if (response.statusCode == 200) {
      return response.data;
    } else {
      return null;
    }
  }
}
