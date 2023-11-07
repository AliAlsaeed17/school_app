import 'package:school_app/core/constants/app_packages.dart';

class HomeNavigationGridView extends StatelessWidget {
  const HomeNavigationGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            mainAxisExtent: 120,
          ),
          children: [
            HomeNavigationItem(
              title: 'المواد',
              icon: Icons.auto_stories,
              onTap: () =>
                  Navigator.pushNamed(context, AppRoutes.subjectsScreen),
            ),
            HomeNavigationItem(
              title: 'الوظائف',
              icon: Icons.chrome_reader_mode_outlined,
              onTap: () =>
                  Navigator.pushNamed(context, AppRoutes.homeworksScreen),
            ),
            HomeNavigationItem(
              title: 'العطل',
              icon: Icons.calendar_month_sharp,
              onTap: () =>
                  Navigator.pushNamed(context, AppRoutes.vacationsScreen),
            ),
            HomeNavigationItem(
              title: 'النتائج',
              icon: Icons.task_alt,
              onTap: () =>
                  Navigator.pushNamed(context, AppRoutes.resultsScreen),
            ),
            HomeNavigationItem(
              title: 'دوام الطالب',
              icon: Icons.checklist_rtl,
              onTap: () =>
                  Navigator.pushNamed(context, AppRoutes.studentTimeScreen),
            ),
            HomeNavigationItem(
              title: 'الباص',
              icon: Icons.bus_alert,
              onTap: () => Navigator.pushNamed(context, AppRoutes.busScreen),
            ),
            HomeNavigationItem(
              title: 'التنبيهات',
              icon: Ionicons.alert_circle_sharp,
              onTap: () => Navigator.pushNamed(context, AppRoutes.alertsScreen),
            ),
            HomeNavigationItem(
              title: 'الأقساط',
              icon: FontAwesomeIcons.moneyBill1,
              onTap: () =>
                  Navigator.pushNamed(context, AppRoutes.installmentsScreen),
            ),
            HomeNavigationItem(
              title: 'الشكاوى',
              icon: Icons.feedback,
              onTap: () =>
                  Navigator.pushNamed(context, AppRoutes.complaintsScreen),
            ),
            HomeNavigationItem(
              title: 'ملاحظات المعلم',
              icon: Icons.note,
              onTap: () =>
                  Navigator.pushNamed(context, AppRoutes.teacherNotesScreen),
            ),
          ],
        ),
      ),
    );
  }
}
