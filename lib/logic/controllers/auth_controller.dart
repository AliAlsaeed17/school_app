import 'package:school_app/core/constants/app_packages.dart';

class AuthController extends GetxController {
  var phoneTextController = TextEditingController();
  var passwordTextController = TextEditingController();
  var passwordVisible = false.obs;
  var sending = false.obs;
  // final UserController userController = Get.find();
  // var repo = UserRepo();

  // Future<void> login() async {
  //   sending.value = true;
  //   if (phoneTextController.value.text.isNotEmpty &&
  //       passwordTextController.value.text.isNotEmpty) {
  //     User? user = await repo.login(
  //         phoneTextController.value.text, passwordTextController.value.text);
  //     if (user != null) {
  //       MyApp.appUser = user;
  //       await userController.saveAuthState(user);
  //       SnackBars.showSuccess("مرحباً ${MyApp.appUser!.name}");
  //     } else {
  //       SnackBars.showWarning('بياناتك غير مطابقة لسجلاتنا');
  //     }
  //   } else {
  //     SnackBars.showError("الرجاء تعبئة الحقول المطلوبة");
  //   }
  //   sending.value = false;
  // }

  void togglePasswordVisible() {
    passwordVisible.value = !passwordVisible.value;
  }
}
