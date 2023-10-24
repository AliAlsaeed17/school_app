import 'package:school_app/core/constants/app_packages.dart';

class AppSnackbar {
  static void showSuccess(BuildContext context, String message) {
    _showSnackbar(context, message, Colors.green);
  }

  static void showWarning(BuildContext context, String message) {
    _showSnackbar(context, message, Colors.orange);
  }

  static void showError(BuildContext context, String message) {
    _showSnackbar(context, message, Colors.red);
  }

  static void _showSnackbar(
      BuildContext context, String message, Color backgroundColor) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        backgroundColor: backgroundColor,
        duration: const Duration(seconds: 2),
      ),
    );
  }
}
