import 'package:school_app/core/constants/app_packages.dart';

class UserRepo {
  var client = UserClient();

  Future<bool> login(phoneNumber, password) async {
    var data = await client.login(phoneNumber, password);
    if (data != null) {
      return true;
    }
    return false;
  }
}
