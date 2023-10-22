import 'package:school_app/core/constants/app_packages.dart';

class UITextStyle {
  static const titleBold = TextStyle(
      color: AppColors.white, fontSize: 18, fontFamily: "Hacen Tunisia Bd");
  static const titleNormal = TextStyle(
      color: AppColors.white, fontSize: 18, fontFamily: "Hacen Tunisia LT");
  static const bodyNormal = TextStyle(
      fontWeight: FontWeight.normal,
      color: AppColors.gray,
      fontSize: 14,
      fontFamily: "Hacen Tunisia Lt");

  static const smallBodyNormal = TextStyle(
      fontWeight: FontWeight.normal,
      color: AppColors.lightBlack,
      fontSize: 18,
      fontFamily: "Hacen Tunisia Lt");

  static const boldSmall = TextStyle(
      fontWeight: FontWeight.bold,
      color: AppColors.labelTextColor,
      fontSize: 16,
      fontFamily: "Hacen Tunisia Lt");

  static const normalSmall = TextStyle(
      fontWeight: FontWeight.normal,
      color: AppColors.labelTextColor,
      fontSize: 16,
      fontFamily: "Hacen Tunisia Lt");
}
