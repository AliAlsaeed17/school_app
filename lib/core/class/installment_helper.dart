import 'package:school_app/core/constants/app_packages.dart';

class InstallmentHelper {
  static Color getInstallmentItemColor(String type) {
    return type == "تسديد" ? AppColors.paymentOn : AppColors.paymentOff;
  }
}
