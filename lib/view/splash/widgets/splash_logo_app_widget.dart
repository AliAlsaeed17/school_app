import 'package:school_app/core/constants/app_packages.dart';

class SplashLogoAppWidget extends StatelessWidget {
  final double containerOpacity;
  final double containerSize;

  const SplashLogoAppWidget({
    super.key,
    required this.containerOpacity,
    required this.containerSize,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 2000),
        curve: Curves.fastLinearToSlowEaseIn,
        opacity: containerOpacity,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 2000),
          curve: Curves.fastLinearToSlowEaseIn,
          height: 400.h / containerSize,
          width: 400.h / containerSize,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Image.asset(AppImages.logo),
        ),
      ),
    );
  }
}
