import 'package:school_app/core/constants/app_packages.dart';

class HomeworkItem extends StatelessWidget {
  const HomeworkItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.homework,
        borderRadius: AppSizes.radius15,
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 55,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: AppSizes.radius10,
                image: const DecorationImage(
                  image: AssetImage(
                    AppImages.studentsSchool,
                  ),
                  fit: BoxFit.cover,
                  opacity: .5,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'عنوان الوظيفة',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  'التوصيف',
                  style: Theme.of(context).textTheme.titleLarge,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
