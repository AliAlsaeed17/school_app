import 'package:school_app/core/constants/app_packages.dart';

class SubjectsItem extends StatelessWidget {
  const SubjectsItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.subject,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.lightWhite,
            borderRadius: AppSizes.radius25,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'المواد',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: AppColors.white,
                      fontSize: 25,
                    ),
              ),
              const Icon(
                Icons.auto_stories,
                size: 37,
                color: AppColors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
