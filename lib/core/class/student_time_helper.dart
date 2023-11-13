import 'package:school_app/core/constants/app_packages.dart';

class StudentTimeHelper {
  static Color getStudentTimeItemColor(String type) {
    return type == "مبرر" ? AppColors.justified : AppColors.unjustified;
  }

  static IconData getStudentTimeItemIcon(String type) {
    return type == "مبرر" ? Icons.done : Icons.clear;
  }
}
