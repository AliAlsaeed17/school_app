import 'package:school_app/core/constants/app_packages.dart';

class StudentTimeShimmer extends StatelessWidget {
  const StudentTimeShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.homework,
        borderRadius: AppSizes.radius15,
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: const BaseShimmerWidget.roundedRectangular(
                width: 55,
                height: 55,
              ),
            ),
          ),
          const Expanded(
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
