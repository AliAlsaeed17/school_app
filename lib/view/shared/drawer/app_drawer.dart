import 'package:school_app/core/constants/app_packages.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.primary,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration:
                BoxDecoration(color: Theme.of(context).colorScheme.secondary),
            accountName: Text(
              "اسم المستخدم",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            accountEmail: Text(
              "",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            currentAccountPicture: CircleAvatar(
              //backgroundImage: NetworkImage(MyApp.appUser!.image),
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
          ),
          DrawerListTile(
            title: 'طلب تسجيل طالب جديد',
            iconData: Icons.accessibility,
            onTap: () => Navigator.pushNamed(context, AppRoutes.registerScreen),
          ),
          DrawerListTile(
            title: 'المواد',
            iconData: Icons.auto_stories,
            onTap: () => Navigator.pushNamed(context, AppRoutes.subjectsScreen),
          ),
          DrawerListTile(
            title: 'الوظائف',
            iconData: Icons.chrome_reader_mode_outlined,
            onTap: () =>
                Navigator.pushNamed(context, AppRoutes.homeworksScreen),
          ),
          DrawerListTile(
            title: 'العطل',
            iconData: Icons.calendar_month_sharp,
            onTap: () =>
                Navigator.pushNamed(context, AppRoutes.vacationsScreen),
          ),
          DrawerListTile(
            title: 'الشكاوى',
            iconData: Icons.feedback,
            onTap: () =>
                Navigator.pushNamed(context, AppRoutes.complaintsScreen),
          ),
          DrawerListTile(
            title: 'النتائج',
            iconData: Icons.task_alt,
            onTap: () => Navigator.pushNamed(context, AppRoutes.resultsScreen),
          ),
          DrawerListTile(
            title: 'دوام الطالب',
            iconData: Icons.checklist_rtl,
            onTap: () =>
                Navigator.pushNamed(context, AppRoutes.studentTimeScreen),
          ),
          DrawerListTile(
            title: 'الباص',
            iconData: Icons.bus_alert,
            onTap: () => Navigator.pushNamed(context, AppRoutes.busScreen),
          ),
          DrawerListTile(
            title: 'التنبيهات',
            iconData: Ionicons.alert_circle_sharp,
            onTap: () => Navigator.pushNamed(context, AppRoutes.alertsScreen),
          ),
          DrawerListTile(
            title: 'الأقساط',
            iconData: FontAwesomeIcons.moneyBill1,
            onTap: () =>
                Navigator.pushNamed(context, AppRoutes.installmentsScreen),
          ),
          DrawerListTile(
            title: 'تسجيل الخروج',
            iconData: Icons.logout,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
