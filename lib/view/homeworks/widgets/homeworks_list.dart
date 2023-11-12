import 'package:school_app/core/constants/app_packages.dart';

class HomeworksList extends StatelessWidget {
  const HomeworksList({super.key, required this.homeworks});

  final List<Homework> homeworks;

  @override
  Widget build(BuildContext context) {
    return homeworks.isEmpty
        ? Text(
            "لايوجد وظائف!",
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontSize: 16,
                  color: AppColors.lightBlack,
                ),
            textAlign: TextAlign.center,
          )
        : ListView.separated(
            itemBuilder: (context, index) {
              return HomeworkItem(
                homework: homeworks[index],
              );
            },
            separatorBuilder: (context, index) => VerticalSizedBox(
                ResponsiveHelper.verticalSpacerHeight(context)),
            itemCount: homeworks.length,
          );
  }
}
