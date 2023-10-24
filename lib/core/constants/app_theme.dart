import 'package:school_app/core/constants/app_packages.dart';

class AppTheme {
  static ThemeData themeArabic = ThemeData(
    fontFamily: 'Hacen Tunisia Lt',
    splashColor: null,
    primarySwatch: null,
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: AppColors.primary,
      onPrimary: AppColors.primary,
      secondary: AppColors.secondary,
      onSecondary: AppColors.secondary,
      error: AppColors.alert,
      onError: AppColors.alert,
      background: AppColors.primary,
      onBackground: AppColors.primary,
      surface: AppColors.white,
      onSurface: AppColors.white,
    ),
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
        fontSize: 16,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.white,
      border: const OutlineInputBorder(),
      hintStyle: const TextStyle(
        color: AppColors.labelTextColor,
        fontSize: 16,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(width: 2, color: AppColors.lightBlack),
        borderRadius: BorderRadius.circular(20.0),
      ),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: AppColors.gray)),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        elevation: const MaterialStatePropertyAll(0),
        backgroundColor:
            const MaterialStatePropertyAll<Color>(AppColors.secondary),
        shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: AppSizes.radius22,
          ),
        ),
        minimumSize: const MaterialStatePropertyAll<Size>(
          Size(double.infinity, 55),
        ),
      ),
    ),
  );
}
