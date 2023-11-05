import 'package:school_app/core/constants/app_packages.dart';

class UserClient {
  Dio dio = Dio();

  Future<dynamic> login(phoneNumber, password) async {
    var response = await dio.post(
      AppApiLinks.loginApi,
      options: Options(
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      ),
      data: jsonEncode(<String, dynamic>{
        "username": phoneNumber,
        "password": password,
      }),
    );
    if (response.statusCode == 200) {
      return response.data;
    } else {
      return null;
    }
  }
}
