import 'package:school_app/core/constants/app_packages.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: MyApp.currentPageIndex,
      onTap: (index) {
        MyApp.currentPageIndex = index;
        switch (index) {
          case 0:
            Navigator.pushNamed(context, AppRoutes.homeScreen);
            break;
          case 1:
            Navigator.pushNamed(context, AppRoutes.notificationsScreen);
            break;
          case 2:
            Navigator.pushNamed(context, AppRoutes.programScreen);
            break;
          case 3:
            Navigator.pushNamed(context, AppRoutes.profileScreen);
            break;
          default:
        }
      },
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home, size: 27),
          label: "الرئيسية",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications, size: 27),
          label: "الإشعارات",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_view_week, size: 27),
          label: "برنامج الدوام",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person, size: 27),
          label: "الملف الشخصي",
        ),
      ],
    );
  }
}
