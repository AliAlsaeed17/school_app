import 'package:school_app/core/constants/app_packages.dart';

class AppIconOption extends StatelessWidget {
  const AppIconOption({
    super.key,
    required this.icon,
    required this.optionTitle,
    required this.onPressed,
  });

  final IconData icon;
  final String optionTitle;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: AppColors.white,
          size: 40,
        ),
        const VerticalSizedBox(3),
        Text(
          optionTitle,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }
}
