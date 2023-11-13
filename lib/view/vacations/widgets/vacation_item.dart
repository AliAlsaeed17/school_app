import 'package:school_app/core/constants/app_packages.dart';

class VacationItem extends StatelessWidget {
  const VacationItem({super.key, required this.vacation});

  final Vacation vacation;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppSizes.padding15,
      decoration: BoxDecoration(
        color: AppColors.vacation,
        border: Border.all(color: AppColors.lightBlack),
        borderRadius: AppSizes.radius25,
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 64,
              decoration: const BoxDecoration(
                borderRadius: AppSizes.radius10,
              ),
              child: Image.asset(AppImages.schoolIcon),
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
                    vacation.title,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: AppColors.primary,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                  Text(
                    '${vacation.day} ${vacation.month}',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: AppColors.primary,
                        ),
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
