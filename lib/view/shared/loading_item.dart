import 'package:school_app/core/constants/app_packages.dart';

class LoadingItem extends StatelessWidget {
  const LoadingItem({
    super.key,
    this.color = AppColors.white,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      color: color,
    );
  }
}
