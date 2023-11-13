import 'package:school_app/core/constants/app_packages.dart';

class SubjectExamItem extends StatelessWidget {
  const SubjectExamItem({super.key, required this.subjectExam});

  final SubjectExam subjectExam;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: AppSizes.padding10,
            decoration: const BoxDecoration(
              color: AppColors.resultColor,
              borderRadius: AppSizes.radiusBottomTopRight15,
            ),
            child: Text(
              subjectExam.subject,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: AppColors.primary,
                    overflow: TextOverflow.ellipsis,
                  ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: AppSizes.padding10,
            decoration: const BoxDecoration(
              color: AppColors.primary,
              borderRadius: AppSizes.radiusBottomTopRight15,
            ),
            child: Text(
              '${subjectExam.studentScore}/${subjectExam.maxScore}',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    overflow: TextOverflow.ellipsis,
                  ),
            ),
          ),
        ),
      ],
    );
  }
}
