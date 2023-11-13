import 'package:school_app/core/constants/app_packages.dart';

class ComplaintsRepo {
  ComplaintsClient client = ComplaintsClient();

  Future<List<Complaint>> getComplaints() async {
    var response = await client.getComplaints();
    if (response != "") {
      return response
          .map<Complaint>((json) => Complaint.fromJson(json))
          .toList();
    }
    return [];
  }
}
