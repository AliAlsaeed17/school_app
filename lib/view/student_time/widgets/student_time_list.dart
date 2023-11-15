import 'package:school_app/core/constants/app_packages.dart';

class StudentTimeList extends StatelessWidget {
  const StudentTimeList({super.key, required this.studentTimes});

  final List<StudentTime> studentTimes;

  @override
  Widget build(BuildContext context) {
    return studentTimes.isEmpty
        ? Center(
            child: Text(
              "لايوجد غيابات!",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: AppColors.lightBlack),
            ),
          )
        : AnimatedItemsList(
            widgets: studentTimes
                .map(
                  (studentTime) => StudentTimeItem(studentTime: studentTime),
                )
                .toList());
  }
}
