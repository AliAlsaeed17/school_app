import 'package:school_app/core/constants/app_packages.dart';

class BusItemListTile extends StatelessWidget {
  const BusItemListTile(
      {super.key, required this.title, required this.subTitle});

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: AppColors.lightBlack,
            ),
      ),
      subtitle: Text(
        subTitle,
        softWrap: true,
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: AppColors.primary,
            ),
      ),
    );
  }
}
