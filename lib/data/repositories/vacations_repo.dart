import 'package:school_app/core/constants/app_packages.dart';

class VacationsRepo {
  VacationsClient client = VacationsClient();

  Future<List<Homework>> getVacations() async {
    var response = await client.getVacations();
    if (response != "") {
      return response.map<Vacation>((json) => Vacation.fromJson(json)).toList();
    }
    return [];
  }
}
