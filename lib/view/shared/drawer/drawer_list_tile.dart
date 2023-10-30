import 'package:school_app/core/constants/app_packages.dart';

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    super.key,
    required this.title,
    required this.iconData,
    required this.onTap,
  });

  final String title;
  final IconData iconData;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style:
            Theme.of(context).textTheme.titleMedium!.apply(fontSizeFactor: .8),
      ),
      leading: Icon(
        iconData,
        color: AppColors.white,
        size: 25,
      ),
      onTap: onTap,
    );
  }
}
