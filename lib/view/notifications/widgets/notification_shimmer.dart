import 'package:school_app/core/constants/app_packages.dart';

class NotificationShimmer extends StatelessWidget {
  const NotificationShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppSizes.padding10,
      decoration: BoxDecoration(
        color: AppColors.gray.withOpacity(.2),
        borderRadius: AppSizes.radius15,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                margin: AppSizes.padding10,
                child: const BaseShimmerWidget.roundedRectangular(
                  width: 55,
                  height: 70,
                ),
              ),
            ),
          ),
          const Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BaseShimmerWidget.roundedRectangular(width: 160, height: 20),
                VerticalSizedBox(5),
                BaseShimmerWidget.roundedRectangular(width: 80, height: 15),
                VerticalSizedBox(5),
                BaseShimmerWidget.roundedRectangular(width: 80, height: 15)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
