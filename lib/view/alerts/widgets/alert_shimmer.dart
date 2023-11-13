import 'package:school_app/core/constants/app_packages.dart';

class AlertShimmer extends StatelessWidget {
  const AlertShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppSizes.padding15,
      decoration: const BoxDecoration(
        color: AppColors.homework,
        borderRadius: AppSizes.radius15,
      ),
      child: const Row(
        children: [
          Expanded(
            child: BaseShimmerWidget.roundedRectangular(
              width: 55,
              height: 55,
            ),
          ),
          HorizontalSizedBox(10),
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BaseShimmerWidget.roundedRectangular(width: 150, height: 20),
                VerticalSizedBox(5),
                BaseShimmerWidget.roundedRectangular(width: 75, height: 15)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
