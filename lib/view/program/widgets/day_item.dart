import 'package:school_app/core/constants/app_packages.dart';

class DayItem extends StatelessWidget {
  const DayItem({super.key, required this.dayProgram});

  final DayProgram dayProgram;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.classesScreen,
            arguments: dayProgram);
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: AppColors.alertInfo,
          borderRadius: AppSizes.radius15,
        ),
        child: Center(
          child: Text(
            dayProgram.day,
            style:
                Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 25),
          ),
        ),
      ),
    );
  }
}
