import 'package:school_app/core/constants/app_packages.dart';

class HomeworkShimmer extends StatelessWidget {
  const HomeworkShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppSizes.paddingH10V5,
      decoration: const BoxDecoration(
        color: AppColors.homework,
        borderRadius: AppSizes.radius15,
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: AppSizes.padding10,
              child: const BaseShimmerWidget.roundedRectangular(
                width: 65,
                height: 65,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BaseShimmerWidget.roundedRectangular(
                    width: 150, height: 20),
                VerticalSizedBox(
                    ResponsiveHelper.verticalSpacerHeight(context)),
                const BaseShimmerWidget.roundedRectangular(
                    width: 75, height: 15)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
