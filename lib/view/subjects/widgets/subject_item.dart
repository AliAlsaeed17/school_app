import 'package:school_app/core/constants/app_packages.dart';

class SubjectItem extends StatelessWidget {
  const SubjectItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: AppSizes.radius22,
              color: AppColors.primary,
              image: const DecorationImage(
                image: AssetImage(
                  AppImages.studentsSchool,
                ),
                fit: BoxFit.cover,
                opacity: .1,
              ),
            ),
          ),
          Center(
            child: Text(
              'Subject Name',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: AppColors.white,
                    fontSize: 25,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
