import 'package:school_app/core/constants/app_packages.dart';

class InstallmentsRepo {
  InstallmentsClient client = InstallmentsClient();

  Future<List<Installment>> getInstallments() async {
    var response = await client.getInstallments();
    if (response != "") {
      return response
          .map<Installment>((json) => Installment.fromJson(json))
          .toList();
    }
    return [];
  }
}
