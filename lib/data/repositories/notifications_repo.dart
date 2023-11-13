import 'package:school_app/core/constants/app_packages.dart';

class NotificationsRepo {
  NotificationsClient client = NotificationsClient();

  Future<List<UserNotification>> getNotifications() async {
    var response = await client.getNotifications();
    if (response != "") {
      return response
          .map<UserNotification>((json) => UserNotification.fromJson(json))
          .toList();
    }
    return [];
  }
}
