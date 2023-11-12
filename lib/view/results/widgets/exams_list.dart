import 'package:school_app/core/constants/app_packages.dart';

class ExamsList extends StatelessWidget {
  const ExamsList({super.key, required this.exams});

  final List<Exam> exams;

  @override
  Widget build(BuildContext context) {
    return exams.isEmpty
        ? Text(
            "لايوجد امتحانات!",
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontSize: 16,
                  color: AppColors.lightBlack,
                ),
            textAlign: TextAlign.center,
          )
        : ListView.separated(
            itemBuilder: (context, index) {
              return ExamItem(
                exam: exams[index],
              );
            },
            separatorBuilder: (context, index) => VerticalSizedBox(
                ResponsiveHelper.verticalSpacerHeight(context)),
            itemCount: exams.length,
          );
  }
}
