import 'package:school_app/core/constants/app_packages.dart';
import 'package:school_app/view/installments/screens/installments_screen.dart';

class AppRouter {
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splashScreen:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case AppRoutes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => AuthCubit(),
            child: const LoginScreen(),
          ),
        );
      case AppRoutes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case AppRoutes.subjectsScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => SubjectsCubit(),
            child: const SubjectsScreen(),
          ),
        );
      case AppRoutes.homeworksScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => HomeworksCubit(),
            child: const HomeworksScreen(),
          ),
        );
      case AppRoutes.vacationsScreen:
        return MaterialPageRoute(
          builder: (_) => const VacationsScreen(),
        );
      case AppRoutes.resultsScreen:
        return MaterialPageRoute(
          builder: (_) => const ExamResultsScreen(),
        );
      case AppRoutes.installmentsScreen:
        return MaterialPageRoute(
          builder: (_) => const InstallmentsScreen(),
        );
      case AppRoutes.complaintsScreen:
        return MaterialPageRoute(
          builder: (_) => const ComplaintsScreen(),
        );
      case AppRoutes.complaintScreen:
        return MaterialPageRoute(
          builder: (_) => ComplaintScreen(
            complaint: settings.arguments as Complaint,
          ),
        );
      case AppRoutes.teacherNotesScreen:
        return MaterialPageRoute(
          builder: (_) => const TeacherNotesScreen(),
        );
    }
    return null;
  }
}
