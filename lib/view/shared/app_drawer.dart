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
              "اسم الأم",
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
          ListTile(
            leading: const Icon(
              Icons.accessibility,
              color: AppColors.white,
              size: 30,
            ),
            title: Text(
              'طلب تسجيل طالب جديد',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.auto_stories,
              color: AppColors.white,
              size: 30,
            ),
            title: Text(
              'المواد',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.chrome_reader_mode_outlined,
              color: AppColors.white,
              size: 30,
            ),
            title: Text(
              'الوظائف',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.calendar_month_sharp,
              color: AppColors.white,
              size: 30,
            ),
            title: Text(
              'العطل',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.feedback,
              color: AppColors.white.withOpacity(.7),
              size: 30,
            ),
            title: Text(
              'الشكاوى',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.task_alt,
              color: AppColors.white,
              size: 30,
            ),
            title: Text(
              'النتائج',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.checklist_rtl,
              color: AppColors.white,
              size: 30,
            ),
            title: Text(
              'دوام الطالب',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.bus_alert,
              color: AppColors.white,
              size: 30,
            ),
            title: Text(
              'الباص',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Ionicons.alert_circle_sharp,
              color: AppColors.white,
              size: 30,
            ),
            title: Text(
              'التنبيهات',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              FontAwesomeIcons.moneyBill1,
              color: AppColors.white,
              size: 30,
            ),
            title: Text(
              'الأقساط',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.logout,
              color: AppColors.white,
              size: 30,
            ),
            title: Text(
              "تسجيل الخروج",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            onTap: () async {},
          ),
        ],
      ),
    );
  }
}
