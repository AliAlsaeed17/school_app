import 'package:school_app/core/constants/app_packages.dart';
import 'package:school_app/core/router/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, _) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.themeArabic,
        locale: const Locale('ar'),
        onGenerateRoute: AppRouter.generateRoute,
      ),
    );
  }
}
