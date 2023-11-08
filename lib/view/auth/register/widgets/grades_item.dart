import 'package:school_app/core/constants/app_packages.dart';

class GradesItem extends StatelessWidget {
  const GradesItem({Key? key, required this.grade}) : super(key: key);

  final Grade grade;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: AppColors.gray.withOpacity(.3),
      child: Row(
        children: [
          Expanded(
            child: Text(
              grade.name,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: AppColors.primary),
            ),
          ),
          Expanded(
            child: Text(
              grade.fee.toString(),
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: AppColors.primary),
            ),
          ),
        ],
      ),
    );
  }
}
