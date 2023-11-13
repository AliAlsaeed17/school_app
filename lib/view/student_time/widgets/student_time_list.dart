import 'package:school_app/core/constants/app_packages.dart';

class StudentTimeList extends StatelessWidget {
  const StudentTimeList({super.key, required this.studentTime});

  final List<StudentTime> studentTime;

  @override
  Widget build(BuildContext context) {
    return studentTime.isEmpty
        ? Center(
            child: Text(
              "لايوجد غيابات!",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: AppColors.lightBlack),
            ),
          )
        : ListView.separated(
            itemBuilder: (context, index) {
              return StudentTimeItem(
                studentTime: studentTime[index],
              );
            },
            separatorBuilder: (context, index) => VerticalSizedBox(
                ResponsiveHelper.verticalSpacerHeight(context)),
            itemCount: studentTime.length,
          );
  }
}
