import 'package:school_app/core/constants/app_packages.dart';

class HomeworkShimmer extends StatelessWidget {
  const HomeworkShimmer({super.key});

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
              child: BaseShimmerWidget.roundedRectangular(
                width: 55,
                height: 55,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BaseShimmerWidget.rectangular(width: 100, height: 20),
                VerticalSizedBox(5),
                BaseShimmerWidget.rectangular(width: 50, height: 15)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
