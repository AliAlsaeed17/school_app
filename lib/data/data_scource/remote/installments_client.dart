// ignore_for_file: file_names

import 'package:school_app/core/constants/app_packages.dart';

class InstallmentsClient {
  Dio dio = Dio();

  Future<dynamic> getInstallments() async {
    var response = await dio.get(
      AppApiLinks.installments,
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
