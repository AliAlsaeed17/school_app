import 'package:school_app/core/constants/app_packages.dart';

class AlertState {
  static Color getAlertColor(String alertState) {
    switch (alertState) {
      case "warning":
        return AppColors.alertWarning;
      case "info":
        return AppColors.alertInfo;
      case "danger":
        return AppColors.alertDanger;
      default:
        return AppColors.unjustified;
    }
  }

  static IconData getAlertIcon(String alertState) {
    switch (alertState) {
      case "warning":
        return Icons.warning;
      case "info":
        return Icons.info;
      case "danger":
        return Icons.back_hand;
      default:
        return Icons.notifications;
    }
  }
}
