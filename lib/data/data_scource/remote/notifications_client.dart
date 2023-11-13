import 'package:school_app/core/constants/app_packages.dart';

class NotificationsClient {
  Dio dio = Dio();

  Future<dynamic> getNotifications() async {
    var response = await dio.get(
      AppApiLinks.notifications,
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
