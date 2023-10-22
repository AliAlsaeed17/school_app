import 'package:school_app/core/constants/app_packages.dart';
import 'package:school_app/view/auth/login/screens/login_screen.dart';

class AppRouter {
  static List<GetPage> routes = [
    GetPage(
      name: AppRoutes.splashScreen,
      page: () => const SplashScreen(),
      transition: Transition.downToUp,
      transitionDuration: const Duration(milliseconds: 250),
    ),
    GetPage(
      name: AppRoutes.loginScreen,
      page: () => LoginScreen(),
      transition: Transition.downToUp,
      transitionDuration: const Duration(milliseconds: 250),
    ),
  ];
}
