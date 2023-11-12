import 'package:school_app/core/constants/app_packages.dart';

class AlertsRepo {
  AlertsClient client = AlertsClient();

  Future<List<Alert>> getAlerts() async {
    var response = await client.getAlerts();
    if (response != "") {
      return response.map<Alert>((json) => Alert.fromJson(json)).toList();
    }
    return [];
  }
}
