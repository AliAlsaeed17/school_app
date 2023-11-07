import 'package:school_app/core/constants/app_packages.dart';

class AppSizes {
  //Border Radius
  static final BorderRadius radius10 = BorderRadius.circular(10);
  static BorderRadius radius15 = BorderRadius.circular(15);
  static BorderRadius radius22 = BorderRadius.circular(22);
  static BorderRadius radius25 = BorderRadius.circular(25);
  static BorderRadius radiusBottomRight45 =
      const BorderRadius.only(bottomRight: Radius.circular(45));
  static BorderRadius radiusTop45 = const BorderRadius.only(
      topLeft: Radius.circular(45), topRight: Radius.circular(45));
  static BorderRadius radiusBottomTopRight15 = const BorderRadius.only(
    topLeft: Radius.circular(15),
    bottomLeft: Radius.circular(15),
    bottomRight: Radius.circular(15),
  );
  static BorderRadius radiusTopLeft45 = const BorderRadius.only(
    topLeft: Radius.circular(45),
  );
}
