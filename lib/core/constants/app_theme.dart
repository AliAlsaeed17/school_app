import 'package:school_app/core/constants/app_packages.dart';

class AppTheme {
  static ThemeData themeArabic = ThemeData(
    fontFamily: 'Hacen Tunisia Lt',
    splashColor: null,
    primarySwatch: null,
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
        color: AppColors.white,
        fontFamily: "Hacen Tunisia Bd",
      ),
      titleMedium: TextStyle(
        fontSize: 18,
        color: AppColors.white,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        color: AppColors.white,
      ),
      bodyMedium: TextStyle(
        color: AppColors.white,
        fontSize: 14,
      ),
      bodySmall: TextStyle(
        color: AppColors.white,
        fontSize: 12,
      ),
    ),
  );
}
