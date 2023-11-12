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
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppColors.resultColor,
              borderRadius: AppSizes.radiusBottomTopRight15,
            ),
            child: Text(
              subjectExam.subject,
              style: UITextStyle.titleBold.copyWith(
                color: AppColors.primary,
                fontSize: 20,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(13),
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: AppSizes.radiusBottomTopRight15,
            ),
            child: RichText(
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              text: TextSpan(
                style: UITextStyle.titleBold,
                children: [
                  TextSpan(
                    text: subjectExam.studentScore,
                  ),
                  const TextSpan(
                    text: "/",
                    style: UITextStyle.titleBold,
                  ),
                  TextSpan(
                    text: subjectExam.maxScore,
                    style: UITextStyle.titleBold,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
