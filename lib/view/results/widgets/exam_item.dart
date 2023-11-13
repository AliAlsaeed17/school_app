import 'package:school_app/core/constants/app_packages.dart';

class ExamItem extends StatelessWidget {
  const ExamItem({super.key, required this.exam});

  final Exam exam;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ResponsiveHelper.screenHeight(context) * .5,
      child: Stack(
        children: [
          Positioned.fill(
            top: 14,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: ResponsiveHelper.screenHeight(context) * 0.03,
              ),
              decoration: BoxDecoration(
                color: AppColors.white,
                border: Border.all(color: AppColors.primary),
                borderRadius: AppSizes.radius25,
              ),
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return SubjectExamItem(
                    subjectExam: exam.subjectExams[index],
                  );
                },
                separatorBuilder: (context, index) => VerticalSizedBox(
                    ResponsiveHelper.verticalSpacerHeight(context)),
                itemCount: exam.subjectExams.length,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: ResponsiveHelper.screenWidth(context) * 0.45,
              height: ResponsiveHelper.screenHeight(context) * 0.04,
              decoration: BoxDecoration(
                color: AppColors.white,
                border: Border.all(color: AppColors.primary),
                borderRadius: AppSizes.radius25,
              ),
              child: Center(
                child: Text(
                  exam.name,
                  overflow: TextOverflow.ellipsis,
                  style: UITextStyle.bodyNormal.copyWith(
                    color: AppColors.primary,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
