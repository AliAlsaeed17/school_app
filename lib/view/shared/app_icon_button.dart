import 'package:school_app/core/constants/app_packages.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton({
    super.key,
    required this.icon,
    this.backgroundColor = AppColors.secondary,
    this.circleShape = false,
    required this.onPressed,
  });

  final Icon icon;
  final Color backgroundColor;
  final bool circleShape;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: circleShape
          ? ShapeDecoration(
              color: backgroundColor,
              shape: const CircleBorder(),
            )
          : BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(15),
            ),
      child: IconButton(onPressed: onPressed, icon: icon),
    );
  }
}
