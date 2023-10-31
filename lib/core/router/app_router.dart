import 'package:school_app/core/constants/app_packages.dart';
import 'package:school_app/logic/cubits/subjects/subjects_cubit.dart';
import 'package:school_app/view/home/screens/home_screen.dart';
import 'package:school_app/view/homeworks/screens/homeworks_screen.dart';
import 'package:school_app/view/subjects/screens/subjects_screen.dart';
import 'package:school_app/view/vacations/screens/vacations_screen.dart';

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
      case AppRoutes.subjectsScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => SubjectsCubit(),
            child: SubjectsScreen(),
          ),
        );
      case AppRoutes.homeworksScreen:
        return MaterialPageRoute(
          builder: (_) => HomeworksScreen(),
        );
      case AppRoutes.vacationsScreen:
        return MaterialPageRoute(
          builder: (_) => VacationsScreen(),
        );
    }
    return null;
  }
}
