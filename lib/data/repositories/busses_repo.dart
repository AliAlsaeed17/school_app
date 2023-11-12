import 'package:school_app/core/constants/app_packages.dart';

class BussesRepo {
  BussesClient client = BussesClient();

  Future<List<Bus>> getBusses() async {
    var response = await client.getBusses();
    if (response != "") {
      return response.map<Bus>((json) => Bus.fromJson(json)).toList();
    }
    return [];
  }
}
