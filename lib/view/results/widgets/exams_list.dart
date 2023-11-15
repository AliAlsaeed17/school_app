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
        : AnimatedItemsList(
            widgets: exams
                .map(
                  (exam) => ExamItem(exam: exam),
                )
                .toList());
  }
}
