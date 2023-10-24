import 'package:school_app/core/constants/app_packages.dart';

class SplashNameAppWidget extends StatelessWidget {
  final double fontSize;
  final double textOpacity;
  final Animation<double> animation;

  const SplashNameAppWidget({
    super.key,
    required this.fontSize,
    required this.textOpacity,
    required this.animation,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 2000),
          curve: Curves.fastLinearToSlowEaseIn,
          height: MediaQuery.of(context).size.height / fontSize,
        ),
        AnimatedOpacity(
          duration: const Duration(milliseconds: 1000),
          opacity: textOpacity,
          child: Text(
            'School App',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: animation.value,
                ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
