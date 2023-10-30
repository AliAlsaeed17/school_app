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
            onTap: () {},
          ),
          DrawerListTile(
            title: 'المواد',
            iconData: Icons.auto_stories,
            onTap: () {},
          ),
          DrawerListTile(
            title: 'الوظائف',
            iconData: Icons.chrome_reader_mode_outlined,
            onTap: () {},
          ),
          DrawerListTile(
            title: 'العطل',
            iconData: Icons.calendar_month_sharp,
            onTap: () {},
          ),
          DrawerListTile(
            title: 'الشكاوى',
            iconData: Icons.feedback,
            onTap: () {},
          ),
          DrawerListTile(
            title: 'النتائج',
            iconData: Icons.task_alt,
            onTap: () {},
          ),
          DrawerListTile(
            title: 'دوام الطالب',
            iconData: Icons.checklist_rtl,
            onTap: () {},
          ),
          DrawerListTile(
            title: 'الباص',
            iconData: Icons.bus_alert,
            onTap: () {},
          ),
          DrawerListTile(
            title: 'التنبيهات',
            iconData: Ionicons.alert_circle_sharp,
            onTap: () {},
          ),
          DrawerListTile(
            title: 'الأقساط',
            iconData: FontAwesomeIcons.moneyBill1,
            onTap: () {},
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
