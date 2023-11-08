import 'package:school_app/core/constants/app_packages.dart';

class DayItemShimmer extends StatelessWidget {
  const DayItemShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: AppColors.alertInfo,
        borderRadius: AppSizes.radius15,
      ),
      child: const Center(
        child: BaseShimmerWidget.roundedRectangular(
          width: 120,
          height: 38,
        ),
      ),
    );
  }
}
