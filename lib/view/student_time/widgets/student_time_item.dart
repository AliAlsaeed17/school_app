import 'package:school_app/core/constants/app_packages.dart';

class StudentTimeItem extends StatelessWidget {
  const StudentTimeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: 'studentTime.status' == "مبرر"
            ? AppColors.justified
            : AppColors.unjustified,
        borderRadius: AppSizes.radius15,
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: AppSizes.radius10,
              ),
              child: const Icon(
                'studentTime.status' == "مبرر" ? Icons.done : Icons.clear,
                color: AppColors.white,
                size: 50,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'studentTime.date',
                    style: Theme.of(context).textTheme.titleLarge!,
                  ),
                  Text(
                    'studentTime.status',
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
