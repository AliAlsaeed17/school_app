import 'package:school_app/core/constants/app_packages.dart';

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
            child:
                const LoginScreen().animate().fade(duration: 200.milliseconds),
          ),
        );
      case AppRoutes.registerScreen:
        return MaterialPageRoute(
          builder: (_) => const RegisterScreen()
              .animate()
              .slideX(duration: 200.milliseconds),
        );
      case AppRoutes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case AppRoutes.notificationsScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => NotificationsCubit(),
            child: const NotificationsScreen(),
          ),
        );
      case AppRoutes.programScreen:
        return MaterialPageRoute(
          builder: (_) => const ProgramScreen(),
        );
      case AppRoutes.classesScreen:
        return MaterialPageRoute(
          builder: (_) => ClassesScreen(
            dayProgram: settings.arguments as DayProgram,
          ),
        );
      case AppRoutes.profileScreen:
        return MaterialPageRoute(
          builder: (_) => const ProfileScreen(),
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
          builder: (_) => BlocProvider(
            create: (context) => VacationsCubit(),
            child: const VacationsScreen(),
          ),
        );
      case AppRoutes.resultsScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => ExamsCubit(),
            child: const ExamResultsScreen(),
          ),
        );
      case AppRoutes.studentTimeScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => StudentTimeCubit(),
            child: const StudentTimeScreen(),
          ),
        );
      case AppRoutes.bussesScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => BussesCubit(),
            child: const BussesScreen(),
          ),
        );
      case AppRoutes.alertsScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => AlertsCubit(),
            child: const AlertsScreen(),
          ),
        );
      case AppRoutes.installmentsScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => InstallmentsCubit(),
            child: const InstallmentsScreen(),
          ),
        );
      case AppRoutes.complaintsScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => ComplaintsCubit(),
            child: const ComplaintsScreen(),
          ),
        );
      case AppRoutes.complaintScreen:
        return MaterialPageRoute(
          builder: (_) => ComplaintScreen(
            complaint: settings.arguments as Complaint?,
          ),
        );
      case AppRoutes.teacherNotesScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => TeacherNotesCubit(),
            child: const TeacherNotesScreen(),
          ),
        );
    }
    return null;
  }
}
