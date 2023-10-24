import 'package:school_app/core/constants/app_packages.dart';
import 'package:school_app/view/home/screens/home_screen.dart';

class AppRouter {
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splashScreen:
        return MaterialPageRoute(
          builder: (_) => SplashScreen(),
        );
      case AppRoutes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => AuthCubit(),
            child: LoginScreen(),
          ),
        );
      case AppRoutes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => HomeScreen(),
        );
    }
    return null;
  }
}
