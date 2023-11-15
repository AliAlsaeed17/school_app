import 'package:school_app/core/constants/app_packages.dart';

class AppSizes {
  //Padding
  static const padding8 = EdgeInsets.all(8.0);
  static const padding10 = EdgeInsets.all(10.0);
  static const padding15 = EdgeInsets.all(15.0);
  static const paddingH10V5 = EdgeInsets.symmetric(horizontal: 10, vertical: 5);
  static const paddingH25 = EdgeInsets.symmetric(horizontal: 25);
  static const paddingH20V100 =
      EdgeInsets.symmetric(horizontal: 20, vertical: 100);

  //Border Radius
  static const BorderRadius radius10 = BorderRadius.all(Radius.circular(10));
  static const BorderRadius radius15 = BorderRadius.all(Radius.circular(15));
  static const BorderRadius radius22 = BorderRadius.all(Radius.circular(22));
  static const BorderRadius radius25 = BorderRadius.all(Radius.circular(25));
  static const BorderRadius radiusBottomRight45 =
      BorderRadius.only(bottomRight: Radius.circular(45));
  static const BorderRadius radiusTop45 = BorderRadius.only(
      topLeft: Radius.circular(45), topRight: Radius.circular(45));
  static const BorderRadius radiusBottomTopRight15 = BorderRadius.only(
    topLeft: Radius.circular(15),
    bottomLeft: Radius.circular(15),
    bottomRight: Radius.circular(15),
  );
  static const BorderRadius radiusTopLeft45 = BorderRadius.only(
    topLeft: Radius.circular(45),
  );
}
