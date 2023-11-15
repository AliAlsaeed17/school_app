import 'package:school_app/core/constants/app_packages.dart';

class StudentTimeItem extends StatelessWidget {
  const StudentTimeItem({super.key, required this.studentTime});

  final StudentTime studentTime;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          bottom: ResponsiveHelper.verticalSpacerHeight(context)),
      padding: AppSizes.padding10,
      decoration: BoxDecoration(
        color: StudentTimeHelper.getStudentTimeItemColor(studentTime.status),
        borderRadius: AppSizes.radius15,
      ),
      child: Row(
        children: [
          Expanded(
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: AppSizes.radius10,
                ),
                child: Icon(
                  StudentTimeHelper.getStudentTimeItemIcon(studentTime.status),
                  color: AppColors.white,
                  size: 50,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: AppSizes.padding10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    DateFormatter.getDateString(studentTime.date),
                    style: Theme.of(context).textTheme.titleLarge!,
                  ),
                  Text(
                    studentTime.status,
                    style: Theme.of(context).textTheme.bodyLarge!,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
